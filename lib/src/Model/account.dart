import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(nullable: false)
class Account {

  int id;

  @JsonKey(name:'auto_balance_period')
  int autoBalancePeriod;
  
  @JsonKey(name:'auto_balance_portfolio_id', nullable: true)
  String autoBalancePortfolioId;
  
  @JsonKey(name:'auto_balance_currency_change_limit', nullable: true)
  String autoBalanceCurrencyChangeLimit;
  
  @JsonKey(name: 'autobalance_enabled')
  bool autobalanceEnabled;
  @JsonKey(name: 'is_locked')
  bool isLocked;
  @JsonKey(name: 'smart_trading_supported')
  bool smartTradingSupported;
  @JsonKey(name: 'smart_selling_supported')
  bool smartSellingSupported;

  //TODO
  //@JsonKey(name: 'alable_for_trading')
  //BuiltMap<dynamic, dynamic> availableForTrading;

  @JsonKey(name: 'stats_supported')
  bool statsSupported;
  @JsonKey(name: 'trading_supported')
  bool tradingSupported;
  @JsonKey(name: 'market_buy_supported')
  bool marketBuySupported;
  @JsonKey(name: 'conditional_buy_supported')
  bool conditionalBuySupported;
  @JsonKey(name: 'bots_allowed')
  bool botsAllowed;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'last_auto_balance', nullable: true)
  String lastAutoBalance;
  @JsonKey(name: 'api_key', nullable: true)
  String apiKey;
  String name;
  @JsonKey(name: 'auto_balance_method', nullable: true)
  String autoBalanceMethod;
  @JsonKey(name: 'auto_balance_error', nullable: true)
  String autoBalanceError;
  @JsonKey(name: 'lock_reason', nullable: true)
  String lockReason;
  @JsonKey(name: 'btc_amount')
  String btcAmount;
  @JsonKey(name: 'usd_amount')
  String usdAmount;
  @JsonKey(name: 'day_profit_btc')
  String dayProfitBtc;
  @JsonKey(name: 'day_profit_usd')
  String dayProfitUsd;
  @JsonKey(name: 'day_profit_btc_percentage')
  String dayProfitBtcPercentage;
  @JsonKey(name: 'day_profit_usd_percentage')
  String dayProfitUsdPercentage;
  @JsonKey(name: 'btc_profit')
  String btcProfit;
  @JsonKey(name: 'usd_profit')
  String usdProfit;
  @JsonKey(name: 'usd_profit_percentage')
  String usdProfitPercentage;
  @JsonKey(name: 'btc_profit_percentage')
  String btcProfitPercentage;
  @JsonKey(name: 'total_btc_profit')
  String totalBtcProfit;
  @JsonKey(name: 'total_usd_profit')
  String totalUsdProfit;
  @JsonKey(name: 'pretty_display_type')
  String prettyDisplayType;

  Account();

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  static List<Account> fromJsonList(List<dynamic> json) => json.map((i) => Account.fromJson(i)).toList(growable: false);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
