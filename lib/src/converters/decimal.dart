
import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';

class DecimalConverter implements JsonConverter<Decimal, Object> {
  const DecimalConverter();

  @override
  Decimal fromJson(Object json) {
    return Decimal.parse(json);
  }

  @override
  Object toJson(Decimal object) {
    return object.toString();
  }
}