
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


//region https://github.com/3commas-io/3commas-official-api-docs/blob/master/rest-api.md

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

//endregion https://github.com/3commas-io/3commas-official-api-docs/blob/master/rest-api.md

//region https://github.com/3commas-io/3commas-official-api-docs/blob/master/accounts_api.md

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

    final response = await _post('accounts/new', body:body);
    return response.body;
  }

  /// User connected exchanges(and EthereumWallet) list (Permission: ACCOUNTS_READ, Security: SIGNED)
  Future<List<Account>> getAccounts() async {
    final response = await _get('accounts');
    return Account.fromJsonList(json.decode(response.body));
  }

  /// Supported markets list (Permission: NONE, Security: NONE)
  Future<List<Market>> getAccountsMarketList() async {
    final response = await _get('accounts/market_list', signed: false);
    return Market.fromJsonList(json.decode(response.body));
  }

  /// Currency rates and limits (Permission: NONE, Security: NONE)
  Future<CurrencyRate> getCurrencyRateAsync(String pair, [String prettyDisplayType = "Binance"]) async {
    final response = await _get('accounts/currency_rates?pretty_display_type=$prettyDisplayType&pair=$pair', signed: false);
    return CurrencyRate.fromJson(json.decode(response.body));
  }

  /// Sell all to USD (Permission: ACCOUNTS_WRITE, Security: SIGNED)
  Future sellAllToUSD(int accountId) async {
    final response = await _post('accounts/$accountId/sell_all_to_usd');
    return response.body;
  }

  /// Sell all to BTC (Permission: ACCOUNTS_WRITE, Security: SIGNED)
  Future sellAllToBTC(int accountId) async {
    final response = await _post('accounts/$accountId/sell_all_to_btc');
    return response.body;
  }

  /// Load balances for specified exchange (Permission: ACCOUNTS_READ, Security: SIGNED)
  Future<Account> loadBalances(int accountId) async {
    final response = await _get('accounts/$accountId/load_balances');
    return Account.fromJson(json.decode(response.body));
  }

  /// Rename exchange connection (Permission: ACCOUNTS_WRITE, Security: SIGNED)
  Future renameAccount(int accountId, String name) async {
    var body = { 'name' : name, };
    final response = await _post('accounts/$accountId/rename', body:body);
    return response.body;
  }

  /// Information aboutl all user balances on specified exchange in pretty for pie chart format (Permission: ACCOUNTS_READ, Security: SIGNED)
  //TODO POST /ver1/accounts/{account_id}/pie_chart_data

  /// Information about all user balances on specified exchange (Permission: ACCOUNTS_READ, Security: SIGNED)
  //TODO POST /ver1/accounts/{account_id}/account_table_data

  /// Remove exchange connection (Permission: ACCOUNTS_WRITE, Security: SIGNED)
  Future removeAccount(int accountId) async {
    final response = await _post('accounts/$accountId/remove');
    return response.body;
  }

//endregion https://github.com/3commas-io/3commas-official-api-docs/blob/master/accounts_api.md

//region https://github.com/3commas-io/3commas-official-api-docs/blob/master/smart_trades_api.md
//endregion https://github.com/3commas-io/3commas-official-api-docs/blob/master/smart_trades_api.md

//region private

  Future<Response> _get(String path, {bool signed = true, Map<String, String> headers}) async {
    var uri = _getFullPath(path);
    var res = await httpClient.get(uri, headers: _getSignedHeaders(headers, uri, signed));
    if (res.statusCode > 400)
      throw new ApiException(res.statusCode, res.body);
    return res;
  }

  Future<Response> _post(String path, {Map<String, String> body = null, bool signed = true, Map<String, String> headers}) async {
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
