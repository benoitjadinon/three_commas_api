
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:three_commas_api/three_commas_api.dart';


/// A class that provides access to the 3commas api.
///
/// ### Example
///
/// ```dart
/// // Create a client and pass in an http.Client.
/// final client = ThreeCommasClient(Client());
///
/// final markets = await client.getVer1AccountsMarketList();
//```
class ThreeCommasClient {

  final Client httpClient;
  final String basePath;
  final String apiVersion;

  String _apiKey;
  String _secretKey;


  ThreeCommasClient(this.httpClient, this._apiKey, this._secretKey, {this.basePath: "https://api.3commas.io/public/api", this.apiVersion = 'ver1'});


  /// Supported markets list (Permission: NONE, Security: NONE)
  Future<List<Market>> getAccountsMarketList() async {
    final response = await _get('accounts/market_list', signed: false);
    return Market.fromJsonList(json.decode(response.body));
  }

  /// Test connectivity to the Rest API (Permission: NONE, Security: NONE)
  Future<bool> getPing() async {
    final response = await _get('ping', signed: false);
    return response.reasonPhrase == "OK";
  }

  /// Test connectivity to the Rest API and get the current server time (Permission: NONE, Security: NONE)
  Future<DateTime> getTime() async {
    final response = await _get('time', signed: false);
    return HttpDate.parse(response.headers['date']);
  }

  /// Add exchange account (Permission: ACCOUNTS_WRITE, Security: SIGNED)
  Future addAccount(String marketName, String name, String apiKey, String secret, [String customerId/*Bitstamp*/, String passphrase/*Coinbase Pro*/]) async {
    var body = {
      'type' : marketName,
      'name' : name,
      'api_key' : apiKey,
      'secret' : secret,
    };

    if (customerId != null)
      body.addAll({'customer_id' : customerId});
    if (passphrase != null)
      body.addAll({'passphrase' : passphrase});

    final response = await _post('accounts/new', body);
    return response.body;
  }

  /// User connected exchanges(and EthereumWallet) list (Permission: ACCOUNTS_READ, Security: SIGNED)
  Future<List<Account>> getAccounts() async {
    final response = await _get('accounts');
    return Account.fromJsonList(json.decode(response.body));
  }

  ///
  Future<CurrencyRate> getCurrencyRateAsync(String pair, [String prettyDisplayType = "Binance"]) async {
    final response = await _get('accounts/currency_rates?pretty_display_type=$prettyDisplayType&pair=$pair');
    return CurrencyRate.fromJson(json.decode(response.body));
  }

//region private

  Future<Response> _get(String path, {bool signed = true, Map<String, String> headers}) async {
    var uri = _getFullPath(path);
    var res = await httpClient.get(uri, headers: _getSignedHeaders(headers, uri, signed));
    if (res.statusCode > 400)
      throw new ApiException(res.statusCode, res.body);
    return res;
  }

  Future<Response> _post(String path, Map<String, String> body, {bool signed = true, Map<String, String> headers}) async {
    var uri = _getFullPath(path);
    var res = await httpClient.post(uri, body: body, headers: _getSignedHeaders(headers, uri, signed, body));
    if (res.statusCode > 400)
      throw new ApiException(res.statusCode, res.body);
    return res;
  }

  @protected String sign(Uri uri, [Map<String, String> body, String secretKey]) {
    if (body != null && body.isNotEmpty)
      uri = new Uri(
          scheme: uri.scheme,
        fragment: uri.fragment,
            host: uri.host,
            path: uri.path,
            port: uri.port,
           query: uri.query,
        userInfo: uri.userInfo,
        queryParameters: body,
      );

    var key = utf8.encode(secretKey ?? _secretKey);
    var toSign = uri.path;
    if (uri.hasQuery)
      toSign += '?'+uri.query;
    var bytes = utf8.encode(toSign);

    var hmacSha256 = new Hmac(sha256, key); // HMAC-SHA256
    var digest = hmacSha256.convert(bytes);

    return digest.toString();
  }

  Map<String, String> _getSignedHeaders(Map<String, String> headers, Uri uri, bool signed, [Map<String, String> body = null]) {
    if (signed) {
      if (headers == null)
        headers = Map<String, String>();
      headers.addAll({'APIKEY': _apiKey, 'Signature': sign(uri, body)});
    }
    return headers;
  }

  Uri _getFullPath(String path) => Uri.parse('$basePath/$apiVersion/$path');

//endregion
}
