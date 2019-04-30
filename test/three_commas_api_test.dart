import 'package:three_commas_api/three_commas_api.dart';
import 'package:test/test.dart';
import 'package:http/http.dart';
import 'api_keys.dart';

void main() {
  group('api unsigned', () {
    ThreeCommasClient client;

    setUp(() {
      client = new ThreeCommasClient(Client(), null, null);
    });

    test('Get Markets List (unsigned)', () async {
      var r = await client.getAccountsMarketList();
      expect(r, isNotEmpty);
    });

    test('Ping (unsigned)', () async {
      var r = await client.getPing();
      expect(r, true);
    });

    test('Time (unsigned)', () async {
      var r = await client.getTime();
      expect(r, isNotNull);
    });
  });

  group('api signed', () {
    ThreeCommasClient client;

    setUp(() {
      client = new ThreeCommasClient(Client(), ThreeCommasApiKey, ThreeCommasSecretKey);
    });

    test('Get User Accounts', () async {
      var r = await client.getAccounts();
      expect(r, isNotEmpty);
    });

    /* signed requests testing only work with real keys

    test('Add User Accounts', () async {
      var r = await client.addAccount("binance", "binance_account", "XXXXXX", "YYYYYY");
      expect(r, isNotEmpty);
    });
    */
  });

  group('signing', () {
    ThreeCommasClient client;

    setUp(() {
      client = new ThreeCommasClient(Client(), 'vmPUZE6mv9SD5VNHk4HlWFsOr6aKE2zvsw0MuIgwCIPy6utIco14y7Ju91duEh8A', 'NhqPtmdSJYdKjVHjA7PZj4Mge3R5YNiP1e3UZjInClVN65XAbvqqM6A7H5fATj0j');
    });

    /// https://github.com/3commas-io/3commas-official-api-docs/blob/master/rest-api.md
    test('signing', () async {
      var r = await client.sign(Uri.parse('https://3commas.io/public/api/ver1/accounts/new?type=binance&name=binance_account&api_key=XXXXXX&secret=YYYYYY'));
      expect(r, equals('30f678a157230290e00475cfffccbc92ae3659d94c145a2c0e9d0fa28f41c11a'));
    });
  });
}
