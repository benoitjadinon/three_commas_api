import 'package:three_commas_api/three_commas_api.dart';
import 'package:http/http.dart';

main() {
  var accounts = new ThreeCommasClient(Client());
  print('accounts: ${accounts.getVer1AccountsMarketList()}');
}
