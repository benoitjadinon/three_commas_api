import 'package:three_commas_api/three_commas_api.dart';
import 'package:test/test.dart';
import 'package:http/http.dart';

void main() {
  group('A group of tests', () {
    ThreeCommasClient client;

    setUp(() {
      client = new ThreeCommasClient(Client());
    });

    test('Get Markets List', () async {
      var r = await client.getVer1AccountsMarketList();
      expect(r, isNotEmpty);
    });
  });
}
