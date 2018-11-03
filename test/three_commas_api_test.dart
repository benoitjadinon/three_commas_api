import 'package:three_commas_api/three_commas_api.dart';
import 'package:test/test.dart';
import 'package:http/http.dart';
import 'api_keys.dart';

void main() {
  group('api', () {
    ThreeCommasClient client;

    setUp(() {
      client = new ThreeCommasClient(Client(), ThreeCommasApiKey, ThreeCommasSecretKey);
    });

    test('Get Markets List (unsigned)', () async {
      var r = await client.getVer1AccountsMarketList();
      expect(r, isNotEmpty);
    });

    /* signed requests testing only work with real keys

    test('Get User Accounts', () async {
      var r = await client.getVer1Accounts();
      expect(r, isNotEmpty);
    });

    test('Add User Accounts', () async {
      var r = await client.addAccount("binance", "binance_account", "XXXXXX", "YYYYYY");
      expect(r, isNotEmpty);
    });
    */
  });

  group('signing', () {
    ThreeCommasClient client;

    setUp(() {
      client = new ThreeCommasClient(Client(), ThreeCommasApiKey, ThreeCommasSecretKey);
    });

    test('signing', () async {
      var r = await client.sign(Uri.parse('https://3commas.io/public/api/ver1/accounts/new?type=binance&name=binance_account&api_key=XXXXXX&secret=YYYYYY'));
      expect(r, equals('30f678a157230290e00475cfffccbc92ae3659d94c145a2c0e9d0fa28f41c11a'));
    });
  });
}
