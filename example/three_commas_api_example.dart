import 'package:three_commas_api/three_commas_api.dart';
import 'package:http/http.dart';

import '../test/api_keys.dart';

main() {
  var accounts = new ThreeCommasClient(Client(), ThreeCommasApiKey, ThreeCommasSecretKey);
  print('accounts: ${accounts.getVer1AccountsMarketList()}');
}
