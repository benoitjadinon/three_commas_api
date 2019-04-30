// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Market _$MarketFromJson(Map<String, dynamic> json) {
  return Market()
    ..marketName = json['market_name'] as String
    ..marketUrl = json['market_url'] as String
    ..marketIcon = json['market_icon'] as String
    ..helpLink = json['help_link'] as String;
}

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
      'market_name': instance.marketName,
      'market_url': instance.marketUrl,
      'market_icon': instance.marketIcon,
      'help_link': instance.helpLink
    };
