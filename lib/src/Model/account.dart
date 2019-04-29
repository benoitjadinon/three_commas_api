import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:three_commas_api/src/converters/decimal.dart';

part 'account.g.dart';

@JsonSerializable(nullable: false)
class Account {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "auto_balance_period", nullable: true)
  int autoBalancePeriod;
  @JsonKey(name: "auto_balance_portfolio_id", nullable: true)
  int autoBalancePortfolioId;
  @JsonKey(name: "auto_balance_currency_change_limit", nullable: true)
  int autoBalanceCurrencyChangeLimit;
  @JsonKey(name: "autobalance_enabled")
  bool autoBalanceEnabled;
  @JsonKey(name: "is_locked")
  bool isLocked;
  @JsonKey(name: "smart_trading_supported")
  bool smartTradingSupported;
  @JsonKey(name: "smart_selling_supported")
  bool smartSellingSupported;
  @JsonKey(name: "available_for_trading")
  Map<String, String> availableForTrading;
  @JsonKey(name: "stats_supported")
  bool statsSupported;
  @JsonKey(name: "trading_supported")
  bool tradingSupported;
  @JsonKey(name: "market_buy_supported")
  bool marketBuySupported;
  @JsonKey(name: "conditional_buy_supported")
  bool conditionalBuySupported;
  @JsonKey(name: "bots_allowed")
  bool botsAllowed;
  @JsonKey(name: "created_at")
  DateTime createdAt;
  @JsonKey(name: "updated_at", nullable: true)
  DateTime updatedAt;
  @JsonKey(name: "last_auto_balance", nullable: true)
  DateTime lastAutoBalance;
  @JsonKey(name: "api_key")
  String apiKey;
  @JsonKey(name: "auto_balance_error")
  String autoBalanceError;
  @JsonKey(name: "lock_reason")
  String lockReason;
  @JsonKey(name: "btc_amount")
  @DecimalConverter()
  Decimal btcAmount;
  @JsonKey(name: "usd_amount")
  @DecimalConverter()
  Decimal usdAmount;
  @JsonKey(name: "day_profit_btc")
  @DecimalConverter()
  Decimal dailyProfitBtc;
  @JsonKey(name: "day_profit_usd")
  @DecimalConverter()
  Decimal dailyProfitUsd;
  @JsonKey(name: "day_profit_btc_percentage")
  @DecimalConverter()
  Decimal dailyProfitBtcPercentage;
  @JsonKey(name: "day_profit_usd_percentage")
  @DecimalConverter()
  Decimal dailyProfitUsdPercentage;
  @JsonKey(name: "btc_profit")
  @DecimalConverter()
  Decimal btcProfit;
  @JsonKey(name: "usd_profit")
  @DecimalConverter()
  Decimal usdProfit;
  @JsonKey(name: "usd_profit_percentage")
  @DecimalConverter()
  Decimal usdProfitPercentage;
  @JsonKey(name: "btc_profit_percentage")
  @DecimalConverter()
  Decimal btcProfitPercentage;
  @JsonKey(name: "total_btc_profit")
  @DecimalConverter()
  Decimal totalBtcProfit;
  @JsonKey(name: "total_usd_profit")
  @DecimalConverter()
  Decimal totalUsdProfit;
  @JsonKey(name: "pretty_display_type")
  String prettyDisplayType;
  @JsonKey(name: "address")
  String address;
  @JsonKey(name: "auto_balance_method", nullable: true)
  AccountBalanceMethod BalanceMethod;

  Account();

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  static List<Account> fromJsonList(List<dynamic> json) =>
      json.map((i) => Account.fromJson(i)).toList(growable: false);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

enum AccountBalanceMethod { time, currency_change }
