// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..autoBalancePeriod = json['auto_balance_period'] as int
    ..autoBalancePortfolioId = json['auto_balance_portfolio_id'] as int
    ..autoBalanceCurrencyChangeLimit =
        json['auto_balance_currency_change_limit'] as int
    ..autoBalanceEnabled = json['autobalance_enabled'] as bool
    ..isLocked = json['is_locked'] as bool
    ..smartTradingSupported = json['smart_trading_supported'] as bool
    ..smartSellingSupported = json['smart_selling_supported'] as bool
    ..availableForTrading =
        Map<String, String>.from(json['available_for_trading'] as Map)
    ..statsSupported = json['stats_supported'] as bool
    ..tradingSupported = json['trading_supported'] as bool
    ..marketBuySupported = json['market_buy_supported'] as bool
    ..conditionalBuySupported = json['conditional_buy_supported'] as bool
    ..botsAllowed = json['bots_allowed'] as bool
    ..createdAt = DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..lastAutoBalance = json['last_auto_balance'] == null
        ? null
        : DateTime.parse(json['last_auto_balance'] as String)
    ..apiKey = json['api_key'] as String
    ..autoBalanceError = json['auto_balance_error'] as String
    ..lockReason = json['lock_reason'] as String
    ..btcAmount = const DecimalConverter().fromJson(json['btc_amount'])
    ..usdAmount = const DecimalConverter().fromJson(json['usd_amount'])
    ..dailyProfitBtc = const DecimalConverter().fromJson(json['day_profit_btc'])
    ..dailyProfitUsd = const DecimalConverter().fromJson(json['day_profit_usd'])
    ..dailyProfitBtcPercentage =
        const DecimalConverter().fromJson(json['day_profit_btc_percentage'])
    ..dailyProfitUsdPercentage =
        const DecimalConverter().fromJson(json['day_profit_usd_percentage'])
    ..btcProfit = const DecimalConverter().fromJson(json['btc_profit'])
    ..usdProfit = const DecimalConverter().fromJson(json['usd_profit'])
    ..usdProfitPercentage =
        const DecimalConverter().fromJson(json['usd_profit_percentage'])
    ..btcProfitPercentage =
        const DecimalConverter().fromJson(json['btc_profit_percentage'])
    ..totalBtcProfit =
        const DecimalConverter().fromJson(json['total_btc_profit'])
    ..totalUsdProfit =
        const DecimalConverter().fromJson(json['total_usd_profit'])
    ..prettyDisplayType = json['pretty_display_type'] as String
    ..address = json['address'] as String
    ..BalanceMethod = _$enumDecodeNullable(
        _$AccountBalanceMethodEnumMap, json['auto_balance_method']);
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'auto_balance_period': instance.autoBalancePeriod,
      'auto_balance_portfolio_id': instance.autoBalancePortfolioId,
      'auto_balance_currency_change_limit':
          instance.autoBalanceCurrencyChangeLimit,
      'autobalance_enabled': instance.autoBalanceEnabled,
      'is_locked': instance.isLocked,
      'smart_trading_supported': instance.smartTradingSupported,
      'smart_selling_supported': instance.smartSellingSupported,
      'available_for_trading': instance.availableForTrading,
      'stats_supported': instance.statsSupported,
      'trading_supported': instance.tradingSupported,
      'market_buy_supported': instance.marketBuySupported,
      'conditional_buy_supported': instance.conditionalBuySupported,
      'bots_allowed': instance.botsAllowed,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'last_auto_balance': instance.lastAutoBalance?.toIso8601String(),
      'api_key': instance.apiKey,
      'auto_balance_error': instance.autoBalanceError,
      'lock_reason': instance.lockReason,
      'btc_amount': const DecimalConverter().toJson(instance.btcAmount),
      'usd_amount': const DecimalConverter().toJson(instance.usdAmount),
      'day_profit_btc':
          const DecimalConverter().toJson(instance.dailyProfitBtc),
      'day_profit_usd':
          const DecimalConverter().toJson(instance.dailyProfitUsd),
      'day_profit_btc_percentage':
          const DecimalConverter().toJson(instance.dailyProfitBtcPercentage),
      'day_profit_usd_percentage':
          const DecimalConverter().toJson(instance.dailyProfitUsdPercentage),
      'btc_profit': const DecimalConverter().toJson(instance.btcProfit),
      'usd_profit': const DecimalConverter().toJson(instance.usdProfit),
      'usd_profit_percentage':
          const DecimalConverter().toJson(instance.usdProfitPercentage),
      'btc_profit_percentage':
          const DecimalConverter().toJson(instance.btcProfitPercentage),
      'total_btc_profit':
          const DecimalConverter().toJson(instance.totalBtcProfit),
      'total_usd_profit':
          const DecimalConverter().toJson(instance.totalUsdProfit),
      'pretty_display_type': instance.prettyDisplayType,
      'address': instance.address,
      'auto_balance_method':
          _$AccountBalanceMethodEnumMap[instance.BalanceMethod]
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$AccountBalanceMethodEnumMap = <AccountBalanceMethod, dynamic>{
  AccountBalanceMethod.time: 'time',
  AccountBalanceMethod.currency_change: 'currency_change'
};
