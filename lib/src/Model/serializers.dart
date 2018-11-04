import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:three_commas_api/src/Model/account.dart';
import 'package:three_commas_api/src/Model/exchange.dart';

part 'serializers.g.dart';

// use this for create dto's : https://charafau.github.io/json2builtvalue/

/// Collection of generated serializers for the built_value chat example.
@SerializersFor(const [
  Exchange,
  Account
])

final Serializers serializers =
  (_$serializers.toBuilder()
    ..addPlugin(StandardJsonPlugin())
  ).build();