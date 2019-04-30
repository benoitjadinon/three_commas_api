import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'market.g.dart';

@JsonSerializable(nullable: false)
class Market
{
  @JsonKey(name: 'market_name')
  String marketName;
  @JsonKey(name: 'market_url')
  String marketUrl;
  @JsonKey(name: 'market_icon')
  String marketIcon;
  @JsonKey(name: 'help_link')
  String helpLink;

  Market();

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);
  static List<Market> fromJsonList(List<dynamic> json) => json.map((i) => Market.fromJson(i)).toList(growable: false);
  Map<String, dynamic> toJson() => _$MarketToJson(this);
}
