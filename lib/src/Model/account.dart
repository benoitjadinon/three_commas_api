import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:decimal/decimal.dart';
import 'package:three_commas_api/src/converters/decimal.dart';

part 'account.g.dart';

@JsonSerializable(nullable: false)
class Account {
  @JsonKey(name:"id")
  int Id;
  @JsonKey(name:"name")
  String Name;
  @JsonKey(name:"auto_balance_period", nullable: true)
  int AutoBalancePeriod;
  @JsonKey(name:"auto_balance_portfolio_id", nullable: true)
  int AutoBalancePortfolioId;
  @JsonKey(name:"auto_balance_currency_change_limit", nullable: true)
  int AutoBalanceCurrencyChangeLimit;
  @JsonKey(name:"autobalance_enabled")
  bool AutoBalanceEnabled;
  @JsonKey(name:"is_locked")
  bool IsLocked;
  @JsonKey(name:"smart_trading_supported")
  bool SmartTradingSupported;
  @JsonKey(name:"smart_selling_supported")
  bool SmartSellingSupported;
  @JsonKey(name:"available_for_trading")
  Map<String,String> AvailableForTrading;
  @JsonKey(name:"stats_supported")
  bool StatsSupported;
  @JsonKey(name:"trading_supported")
  bool TradingSupported;
  @JsonKey(name:"market_buy_supported")
  bool MarketBuySupported;
  @JsonKey(name:"conditional_buy_supported")
  bool ConditionalBuySupported;
  @JsonKey(name:"bots_allowed")
  bool BotsAllowed;
  @JsonKey(name:"created_at")
  DateTime CreatedAt;
  @JsonKey(name:"updated_at", nullable: true)
  DateTime UpdatedAt;
  @JsonKey(name:"last_auto_balance", nullable: true)
  DateTime LastAutoBalance;
  @JsonKey(name:"api_key")
  String ApiKey;
  @JsonKey(name:"auto_balance_error")
  String AutoBalanceError;
  @JsonKey(name:"lock_reason")
  String LockReason;
  @JsonKey(name:"btc_amount")
  @DecimalConverter()
  Decimal BtcAmount;
  @JsonKey(name:"usd_amount")
  @DecimalConverter()
  Decimal UsdAmount;
  @JsonKey(name:"day_profit_btc")
  @DecimalConverter()
  Decimal DailyProfitBtc;
  @JsonKey(name:"day_profit_usd")
  @DecimalConverter()
  Decimal DailyProfitUsd;
  @JsonKey(name:"day_profit_btc_percentage")
  @DecimalConverter()
  Decimal DailyProfitBtcPercentage;
  @JsonKey(name:"day_profit_usd_percentage")
  @DecimalConverter()
  Decimal DailyProfitUsdPercentage;
  @JsonKey(name:"btc_profit")
  @DecimalConverter()
  Decimal BtcProfit;
  @JsonKey(name:"usd_profit")
  @DecimalConverter()
  Decimal UsdProfit;
  @JsonKey(name:"usd_profit_percentage")
  @DecimalConverter()
  Decimal UsdProfitPercentage;
  @JsonKey(name:"btc_profit_percentage")
  @DecimalConverter()
  Decimal BtcProfitPercentage;
  @JsonKey(name:"total_btc_profit")
  @DecimalConverter()
  Decimal TotalBtcProfit;
  @JsonKey(name:"total_usd_profit")
  @DecimalConverter()
  Decimal TotalUsdProfit;
  @JsonKey(name:"pretty_display_type")
  String PrettyDisplayType;
  @JsonKey(name:"address")
  String Address;
  @JsonKey(name:"auto_balance_method", nullable: true)
  AccountBalanceMethod BalanceMethod;

  Account();

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  static List<Account> fromJsonList(List<dynamic> json) => json.map((i) => Account.fromJson(i)).toList(growable: false);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

enum AccountBalanceMethod {
  time,
  currency_change
}