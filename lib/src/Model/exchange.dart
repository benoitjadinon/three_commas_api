import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'exchange.g.dart';

@JsonSerializable(nullable: false)
class Exchange
{
  @JsonKey(name: 'market_name')
  String marketName;
  @JsonKey(name: 'market_url')
  String marketUrl;
  @JsonKey(name: 'market_icon')
  String marketIcon;
  @JsonKey(name: 'help_link')
  String helpLink;

  Exchange();

  factory Exchange.fromJson(Map<String, dynamic> json) => _$ExchangeFromJson(json);
  static List<Exchange> fromJsonList(List<dynamic> json) => json.map((i) => Exchange.fromJson(i)).toList(growable: false);
  Map<String, dynamic> toJson() => _$ExchangeToJson(this);
}
