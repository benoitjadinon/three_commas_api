import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:three_commas_api/src/converters/decimal.dart';

part 'currency_rate.g.dart';

@JsonSerializable(nullable: false)
class CurrencyRate {
  @JsonKey(name: "last")
  @DecimalConverter()
  Decimal last;
  @JsonKey(name: "bid")
  @DecimalConverter()
  Decimal bid;
  @JsonKey(name: "ask")
  @DecimalConverter()
  Decimal ask;
  @JsonKey(name: "minPrice")
  @DecimalConverter()
  Decimal minPrice;
  @JsonKey(name: "priceStep")
  @DecimalConverter()
  Decimal priceStep;
  @JsonKey(name: "minLotSize")
  @DecimalConverter()
  Decimal minLotSize;
  @JsonKey(name: "maxLotSize")
  @DecimalConverter()
  Decimal maxLotSize;
  @JsonKey(name: "lotStep")
  @DecimalConverter()
  Decimal lotStep;
  @JsonKey(name: "minTotal")
  @DecimalConverter()
  Decimal minTotal;

  CurrencyRate();

  factory CurrencyRate.fromJson(Map<String, dynamic> json) => _$CurrencyRateFromJson(json);
  static List<CurrencyRate> fromJsonList(List<dynamic> json) => json.map((i) => CurrencyRate.fromJson(i)).toList(growable: false);
  Map<String, dynamic> toJson() => _$CurrencyRateToJson(this);
}