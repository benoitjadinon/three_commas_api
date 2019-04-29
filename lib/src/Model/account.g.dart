// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account()
    ..id = json['id'] as int
    ..autoBalancePeriod = json['auto_balance_period'] as int
    ..autoBalancePortfolioId = json['auto_balance_portfolio_id'] as String
    ..autoBalanceCurrencyChangeLimit =
        json['auto_balance_currency_change_limit'] as String
    ..autobalanceEnabled = json['autobalance_enabled'] as bool
    ..isLocked = json['is_locked'] as bool
    ..smartTradingSupported = json['smart_trading_supported'] as bool
    ..smartSellingSupported = json['smart_selling_supported'] as bool
    ..statsSupported = json['stats_supported'] as bool
    ..tradingSupported = json['trading_supported'] as bool
    ..marketBuySupported = json['market_buy_supported'] as bool
    ..conditionalBuySupported = json['conditional_buy_supported'] as bool
    ..botsAllowed = json['bots_allowed'] as bool
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..lastAutoBalance = json['last_auto_balance'] as String
    ..apiKey = json['api_key'] as String
    ..name = json['name'] as String
    ..autoBalanceMethod = json['auto_balance_method'] as String
    ..autoBalanceError = json['auto_balance_error'] as String
    ..lockReason = json['lock_reason'] as String
    ..btcAmount = json['btc_amount'] as String
    ..usdAmount = json['usd_amount'] as String
    ..dayProfitBtc = json['day_profit_btc'] as String
    ..dayProfitUsd = json['day_profit_usd'] as String
    ..dayProfitBtcPercentage = json['day_profit_btc_percentage'] as String
    ..dayProfitUsdPercentage = json['day_profit_usd_percentage'] as String
    ..btcProfit = json['btc_profit'] as String
    ..usdProfit = json['usd_profit'] as String
    ..usdProfitPercentage = json['usd_profit_percentage'] as String
    ..btcProfitPercentage = json['btc_profit_percentage'] as String
    ..totalBtcProfit = json['total_btc_profit'] as String
    ..totalUsdProfit = json['total_usd_profit'] as String
    ..prettyDisplayType = json['pretty_display_type'] as String;
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'auto_balance_period': instance.autoBalancePeriod,
      'auto_balance_portfolio_id': instance.autoBalancePortfolioId,
      'auto_balance_currency_change_limit':
          instance.autoBalanceCurrencyChangeLimit,
      'autobalance_enabled': instance.autobalanceEnabled,
      'is_locked': instance.isLocked,
      'smart_trading_supported': instance.smartTradingSupported,
      'smart_selling_supported': instance.smartSellingSupported,
      'stats_supported': instance.statsSupported,
      'trading_supported': instance.tradingSupported,
      'market_buy_supported': instance.marketBuySupported,
      'conditional_buy_supported': instance.conditionalBuySupported,
      'bots_allowed': instance.botsAllowed,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'last_auto_balance': instance.lastAutoBalance,
      'api_key': instance.apiKey,
      'name': instance.name,
      'auto_balance_method': instance.autoBalanceMethod,
      'auto_balance_error': instance.autoBalanceError,
      'lock_reason': instance.lockReason,
      'btc_amount': instance.btcAmount,
      'usd_amount': instance.usdAmount,
      'day_profit_btc': instance.dayProfitBtc,
      'day_profit_usd': instance.dayProfitUsd,
      'day_profit_btc_percentage': instance.dayProfitBtcPercentage,
      'day_profit_usd_percentage': instance.dayProfitUsdPercentage,
      'btc_profit': instance.btcProfit,
      'usd_profit': instance.usdProfit,
      'usd_profit_percentage': instance.usdProfitPercentage,
      'btc_profit_percentage': instance.btcProfitPercentage,
      'total_btc_profit': instance.totalBtcProfit,
      'total_usd_profit': instance.totalUsdProfit,
      'pretty_display_type': instance.prettyDisplayType
    };
