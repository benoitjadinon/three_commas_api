
import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:three_commas_api/src/Model/exchange.dart';

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

  String _apiKey;
  String _secretKey;

  ThreeCommasClient(this.httpClient, this._apiKey, this._secretKey, {this.basePath: "https://3commas.io/public/api"});


  /// Supported markets list (Permission: NONE, Security: NONE)
  Future<List<Exchange>> getVer1AccountsMarketList() async
  {
    final response = await _get('accounts/market_list');
    return Exchange.fromJsonList(response.body);
  }

  /// Add exchange account (Permission: ACCOUNTS_WRITE, Security: SIGNED)
  Future addAccount(String marketName, String name, String apiKey, String secret, [String customerId, String passphrase]) async
  {
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

    final response = await _post('accounts/new', body, signed: true);
    if (response.statusCode > 200)
      throw new Exception(response.statusCode.toString() + response.body);
    return Exchange.fromJsonList(response.body);
  }

  /// User connected exchanges(and EthereumWallet) list (Permission: ACCOUNTS_READ, Security: SIGNED)
  Future<List<Exchange>> getVer1Accounts() async
  {
    final response = await _get('accounts', signed: true);
    if (response.statusCode > 200)
      throw new Exception(response.statusCode.toString() + response.body);
    return Exchange.fromJsonList(response.body);
  }


  Future<Response> _get(String path, {bool signed = false, Map<String, String> headers}) async {
    var uri = _getFullPath(path);
    return await httpClient.get(uri, headers: _getSignedHeaders(headers, uri, signed));
  }

  Future<Response> _post(String path, Map<String, String> body, {bool signed = false, Map<String, String> headers}) async {
    var uri = _getFullPath(path);
    return await httpClient.post(uri, body: body, headers: _getSignedHeaders(headers, uri, signed, body));
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

  Uri _getFullPath(String path) => Uri.parse('$basePath/ver1/$path');
}
