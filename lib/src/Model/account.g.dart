// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account()
    ..Id = json['id'] as int
    ..Name = json['name'] as String
    ..AutoBalancePeriod = json['auto_balance_period'] as int
    ..AutoBalancePortfolioId = json['auto_balance_portfolio_id'] as int
    ..AutoBalanceCurrencyChangeLimit =
        json['auto_balance_currency_change_limit'] as int
    ..AutoBalanceEnabled = json['autobalance_enabled'] as bool
    ..IsLocked = json['is_locked'] as bool
    ..SmartTradingSupported = json['smart_trading_supported'] as bool
    ..SmartSellingSupported = json['smart_selling_supported'] as bool
    ..AvailableForTrading =
        Map<String, String>.from(json['available_for_trading'] as Map)
    ..StatsSupported = json['stats_supported'] as bool
    ..TradingSupported = json['trading_supported'] as bool
    ..MarketBuySupported = json['market_buy_supported'] as bool
    ..ConditionalBuySupported = json['conditional_buy_supported'] as bool
    ..BotsAllowed = json['bots_allowed'] as bool
    ..CreatedAt = DateTime.parse(json['created_at'] as String)
    ..UpdatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..LastAutoBalance = json['last_auto_balance'] == null
        ? null
        : DateTime.parse(json['last_auto_balance'] as String)
    ..ApiKey = json['api_key'] as String
    ..AutoBalanceError = json['auto_balance_error'] as String
    ..LockReason = json['lock_reason'] as String
    ..BtcAmount = const DecimalConverter().fromJson(json['btc_amount'])
    ..UsdAmount = const DecimalConverter().fromJson(json['usd_amount'])
    ..DailyProfitBtc = const DecimalConverter().fromJson(json['day_profit_btc'])
    ..DailyProfitUsd = const DecimalConverter().fromJson(json['day_profit_usd'])
    ..DailyProfitBtcPercentage =
        const DecimalConverter().fromJson(json['day_profit_btc_percentage'])
    ..DailyProfitUsdPercentage =
        const DecimalConverter().fromJson(json['day_profit_usd_percentage'])
    ..BtcProfit = const DecimalConverter().fromJson(json['btc_profit'])
    ..UsdProfit = const DecimalConverter().fromJson(json['usd_profit'])
    ..UsdProfitPercentage =
        const DecimalConverter().fromJson(json['usd_profit_percentage'])
    ..BtcProfitPercentage =
        const DecimalConverter().fromJson(json['btc_profit_percentage'])
    ..TotalBtcProfit =
        const DecimalConverter().fromJson(json['total_btc_profit'])
    ..TotalUsdProfit =
        const DecimalConverter().fromJson(json['total_usd_profit'])
    ..PrettyDisplayType = json['pretty_display_type'] as String
    ..Address = json['address'] as String
    ..BalanceMethod = _$enumDecodeNullable(
        _$AccountBalanceMethodEnumMap, json['auto_balance_method']);
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.Id,
      'name': instance.Name,
      'auto_balance_period': instance.AutoBalancePeriod,
      'auto_balance_portfolio_id': instance.AutoBalancePortfolioId,
      'auto_balance_currency_change_limit':
          instance.AutoBalanceCurrencyChangeLimit,
      'autobalance_enabled': instance.AutoBalanceEnabled,
      'is_locked': instance.IsLocked,
      'smart_trading_supported': instance.SmartTradingSupported,
      'smart_selling_supported': instance.SmartSellingSupported,
      'available_for_trading': instance.AvailableForTrading,
      'stats_supported': instance.StatsSupported,
      'trading_supported': instance.TradingSupported,
      'market_buy_supported': instance.MarketBuySupported,
      'conditional_buy_supported': instance.ConditionalBuySupported,
      'bots_allowed': instance.BotsAllowed,
      'created_at': instance.CreatedAt.toIso8601String(),
      'updated_at': instance.UpdatedAt?.toIso8601String(),
      'last_auto_balance': instance.LastAutoBalance?.toIso8601String(),
      'api_key': instance.ApiKey,
      'auto_balance_error': instance.AutoBalanceError,
      'lock_reason': instance.LockReason,
      'btc_amount': const DecimalConverter().toJson(instance.BtcAmount),
      'usd_amount': const DecimalConverter().toJson(instance.UsdAmount),
      'day_profit_btc':
          const DecimalConverter().toJson(instance.DailyProfitBtc),
      'day_profit_usd':
          const DecimalConverter().toJson(instance.DailyProfitUsd),
      'day_profit_btc_percentage':
          const DecimalConverter().toJson(instance.DailyProfitBtcPercentage),
      'day_profit_usd_percentage':
          const DecimalConverter().toJson(instance.DailyProfitUsdPercentage),
      'btc_profit': const DecimalConverter().toJson(instance.BtcProfit),
      'usd_profit': const DecimalConverter().toJson(instance.UsdProfit),
      'usd_profit_percentage':
          const DecimalConverter().toJson(instance.UsdProfitPercentage),
      'btc_profit_percentage':
          const DecimalConverter().toJson(instance.BtcProfitPercentage),
      'total_btc_profit':
          const DecimalConverter().toJson(instance.TotalBtcProfit),
      'total_usd_profit':
          const DecimalConverter().toJson(instance.TotalUsdProfit),
      'pretty_display_type': instance.PrettyDisplayType,
      'address': instance.Address,
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
