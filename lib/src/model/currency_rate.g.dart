// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyRate _$CurrencyRateFromJson(Map<String, dynamic> json) {
  return CurrencyRate()
    ..last = const DecimalConverter().fromJson(json['last'])
    ..bid = const DecimalConverter().fromJson(json['bid'])
    ..ask = const DecimalConverter().fromJson(json['ask'])
    ..minPrice = const DecimalConverter().fromJson(json['minPrice'])
    ..priceStep = const DecimalConverter().fromJson(json['priceStep'])
    ..minLotSize = const DecimalConverter().fromJson(json['minLotSize'])
    ..maxLotSize = const DecimalConverter().fromJson(json['maxLotSize'])
    ..lotStep = const DecimalConverter().fromJson(json['lotStep'])
    ..minTotal = const DecimalConverter().fromJson(json['minTotal']);
}

Map<String, dynamic> _$CurrencyRateToJson(CurrencyRate instance) =>
    <String, dynamic>{
      'last': const DecimalConverter().toJson(instance.last),
      'bid': const DecimalConverter().toJson(instance.bid),
      'ask': const DecimalConverter().toJson(instance.ask),
      'minPrice': const DecimalConverter().toJson(instance.minPrice),
      'priceStep': const DecimalConverter().toJson(instance.priceStep),
      'minLotSize': const DecimalConverter().toJson(instance.minLotSize),
      'maxLotSize': const DecimalConverter().toJson(instance.maxLotSize),
      'lotStep': const DecimalConverter().toJson(instance.lotStep),
      'minTotal': const DecimalConverter().toJson(instance.minTotal)
    };
