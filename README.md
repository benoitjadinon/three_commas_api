Async Dart api for 3commas.io.

## Usage

A simple usage example:

```dart
import 'package:three_commas_api/three_commas_api.dart';

main() async {
  var client = new ThreeCommasClient(Client(), 'APIKEY', 'SECRET');
  var exchanges = await client.getVer1AccountsMarketList();
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/benoitjadinon/three_commas_api/issues
