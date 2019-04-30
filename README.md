Async Dart api for 3commas.io.

## Usage

A simple usage example:

```dart
import 'package:three_commas_api/three_commas_api.dart';
import 'package:http/http.dart' as http;

main() async {
  var client = new ThreeCommasClient(http.Client(), 'APIKEY', 'SECRET');
  var exchanges = await client.getVer1AccountsMarketList();
}
```

## Version

work in progress, 20% or so, matching the 2019-03-14 release

## Contribute

Docs from https://github.com/3commas-io/3commas-official-api-docs/

DTOs can be converted manually from https://github.com/TheKimono/3Commas.Net

camelCase properties using this plugin with alt-shift-U after having alt-shift-doubleclick all properies
    https://plugins.jetbrains.com/plugin/7160-camelcase
or
    https://intellij-support.jetbrains.com/hc/en-us/community/posts/206174959-Code-formatting-replacing-with-camelCase-everywhere

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/benoitjadinon/three_commas_api/issues
