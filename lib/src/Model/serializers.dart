library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:three_commas_api/src/Model/exchange.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor(const [
  Exchange,
])

final Serializers serializers =
  (_$serializers.toBuilder()
    ..addPlugin(StandardJsonPlugin())
  ).build();