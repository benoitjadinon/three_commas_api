import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quiver/core.dart';
import 'package:three_commas_api/src/Model/serializers.dart';

part 'account.g.dart';

abstract class Account implements Built<Account, AccountBuilder> {
  Account._();

  factory Account([updates(AccountBuilder b)]) = _$Account;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'auto_balance_period')
  int get autoBalancePeriod;
  @nullable
  @BuiltValueField(wireName: 'auto_balance_portfolio_id')
  String get autoBalancePortfolioId;
  @nullable
  @BuiltValueField(wireName: 'auto_balance_currency_change_limit')
  String get autoBalanceCurrencyChangeLimit;
  @BuiltValueField(wireName: 'autobalance_enabled')
  bool get autobalanceEnabled;
  @BuiltValueField(wireName: 'is_locked')
  bool get isLocked;
  @BuiltValueField(wireName: 'smart_trading_supported')
  bool get smartTradingSupported;
  @BuiltValueField(wireName: 'smart_selling_supported')
  bool get smartSellingSupported;
  @BuiltValueField(wireName: 'available_for_trading')
  BuiltMap<dynamic, dynamic> get availableForTrading;
  @BuiltValueField(wireName: 'stats_supported')
  bool get statsSupported;
  @BuiltValueField(wireName: 'trading_supported')
  bool get tradingSupported;
  @BuiltValueField(wireName: 'market_buy_supported')
  bool get marketBuySupported;
  @BuiltValueField(wireName: 'conditional_buy_supported')
  bool get conditionalBuySupported;
  @BuiltValueField(wireName: 'bots_allowed')
  bool get botsAllowed;
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;
  @nullable
  @BuiltValueField(wireName: 'last_auto_balance')
  String get lastAutoBalance;
  @nullable
  @BuiltValueField(wireName: 'api_key')
  String get apiKey;
  @BuiltValueField(wireName: 'name')
  String get name;
  @nullable
  @BuiltValueField(wireName: 'auto_balance_method')
  String get autoBalanceMethod;
  @nullable
  @BuiltValueField(wireName: 'auto_balance_error')
  String get autoBalanceError;
  @nullable
  @BuiltValueField(wireName: 'lock_reason')
  String get lockReason;
  @BuiltValueField(wireName: 'btc_amount')
  String get btcAmount;
  @BuiltValueField(wireName: 'usd_amount')
  String get usdAmount;
  @BuiltValueField(wireName: 'day_profit_btc')
  String get dayProfitBtc;
  @BuiltValueField(wireName: 'day_profit_usd')
  String get dayProfitUsd;
  @BuiltValueField(wireName: 'day_profit_btc_percentage')
  String get dayProfitBtcPercentage;
  @BuiltValueField(wireName: 'day_profit_usd_percentage')
  String get dayProfitUsdPercentage;
  @BuiltValueField(wireName: 'btc_profit')
  String get btcProfit;
  @BuiltValueField(wireName: 'usd_profit')
  String get usdProfit;
  @BuiltValueField(wireName: 'usd_profit_percentage')
  String get usdProfitPercentage;
  @BuiltValueField(wireName: 'btc_profit_percentage')
  String get btcProfitPercentage;
  @BuiltValueField(wireName: 'total_btc_profit')
  String get totalBtcProfit;
  @BuiltValueField(wireName: 'total_usd_profit')
  String get totalUsdProfit;
  @BuiltValueField(wireName: 'pretty_display_type')
  String get prettyDisplayType;
  String toJson() {
    return json.encode(serializers.serializeWith(Account.serializer, this));
  }

  static Account fromJson(String jsonString) {
    return serializers.deserializeWith(Account.serializer, json.decode(jsonString));
  }

  static List<Account> fromJsonList(String jsonString) {
    return json.decode(jsonString).map<Account>((map) =>
        serializers.deserializeWith<Account>(Account.serializer, map)).toList();
  }

  static Serializer<Account> get serializer => _$accountSerializer;
}
