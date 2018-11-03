
import 'dart:async';
import 'dart:convert';

import 'package:built_collection/src/list.dart';
import 'package:http/http.dart';
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

  ThreeCommasClient(this.httpClient, {this.basePath: "https://3commas.io/public/api"});

  /// Supported markets list (Permission: NONE, Security: NONE)
  Future<List<Exchange>> getVer1AccountsMarketList() async
  {
    var uri = Uri.parse('$basePath/ver1/accounts/market_list');
    final response = await httpClient.get(uri);
    return Exchange.fromJsonList(response.body);
  }
}
