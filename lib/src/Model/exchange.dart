import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:three_commas_api/src/Model/serializers.dart';

part 'exchange.g.dart';

abstract class Exchange implements Built<Exchange, ExchangeBuilder> {
  Exchange._();

  factory Exchange([updates(ExchangeBuilder b)]) = _$Exchange;

  @BuiltValueField(wireName: 'market_name')
  String get marketName;
  @BuiltValueField(wireName: 'market_url')
  String get marketUrl;
  @BuiltValueField(wireName: 'market_icon')
  String get marketIcon;
  @BuiltValueField(wireName: 'help_link')
  String get helpLink;

  String toJson() {
    return json.encode(serializers.serializeWith(Exchange.serializer, this));
  }

  static Exchange fromJson(String jsonString) {
    return serializers.deserializeWith(Exchange.serializer, json.decode(jsonString));
  }

  static List<Exchange> fromJsonList(String jsonString) {
    return json.decode(jsonString).map<Exchange>((map) => serializers.deserializeWith<Exchange>(Exchange.serializer, map)).toList();
  }

  static Serializer<Exchange> get serializer => _$exchangeSerializer;
}
