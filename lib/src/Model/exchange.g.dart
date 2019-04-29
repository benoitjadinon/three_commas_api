// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exchange _$ExchangeFromJson(Map<String, dynamic> json) {
  return Exchange()
    ..marketName = json['market_name'] as String
    ..marketUrl = json['market_url'] as String
    ..marketIcon = json['market_icon'] as String
    ..helpLink = json['help_link'] as String;
}

Map<String, dynamic> _$ExchangeToJson(Exchange instance) => <String, dynamic>{
      'market_name': instance.marketName,
      'market_url': instance.marketUrl,
      'market_icon': instance.marketIcon,
      'help_link': instance.helpLink
    };
