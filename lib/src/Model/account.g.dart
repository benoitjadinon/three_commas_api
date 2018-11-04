// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Account> _$accountSerializer = new _$AccountSerializer();

class _$AccountSerializer implements StructuredSerializer<Account> {
  @override
  final Iterable<Type> types = const [Account, _$Account];
  @override
  final String wireName = 'Account';

  @override
  Iterable serialize(Serializers serializers, Account object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'auto_balance_period',
      serializers.serialize(object.autoBalancePeriod,
          specifiedType: const FullType(int)),
      'autobalance_enabled',
      serializers.serialize(object.autobalanceEnabled,
          specifiedType: const FullType(bool)),
      'is_locked',
      serializers.serialize(object.isLocked,
          specifiedType: const FullType(bool)),
      'smart_trading_supported',
      serializers.serialize(object.smartTradingSupported,
          specifiedType: const FullType(bool)),
      'smart_selling_supported',
      serializers.serialize(object.smartSellingSupported,
          specifiedType: const FullType(bool)),
      'available_for_trading',
      serializers.serialize(object.availableForTrading,
          specifiedType: const FullType(BuiltMap)),
      'stats_supported',
      serializers.serialize(object.statsSupported,
          specifiedType: const FullType(bool)),
      'trading_supported',
      serializers.serialize(object.tradingSupported,
          specifiedType: const FullType(bool)),
      'market_buy_supported',
      serializers.serialize(object.marketBuySupported,
          specifiedType: const FullType(bool)),
      'conditional_buy_supported',
      serializers.serialize(object.conditionalBuySupported,
          specifiedType: const FullType(bool)),
      'bots_allowed',
      serializers.serialize(object.botsAllowed,
          specifiedType: const FullType(bool)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'btc_amount',
      serializers.serialize(object.btcAmount,
          specifiedType: const FullType(String)),
      'usd_amount',
      serializers.serialize(object.usdAmount,
          specifiedType: const FullType(String)),
      'day_profit_btc',
      serializers.serialize(object.dayProfitBtc,
          specifiedType: const FullType(String)),
      'day_profit_usd',
      serializers.serialize(object.dayProfitUsd,
          specifiedType: const FullType(String)),
      'day_profit_btc_percentage',
      serializers.serialize(object.dayProfitBtcPercentage,
          specifiedType: const FullType(String)),
      'day_profit_usd_percentage',
      serializers.serialize(object.dayProfitUsdPercentage,
          specifiedType: const FullType(String)),
      'btc_profit',
      serializers.serialize(object.btcProfit,
          specifiedType: const FullType(String)),
      'usd_profit',
      serializers.serialize(object.usdProfit,
          specifiedType: const FullType(String)),
      'usd_profit_percentage',
      serializers.serialize(object.usdProfitPercentage,
          specifiedType: const FullType(String)),
      'btc_profit_percentage',
      serializers.serialize(object.btcProfitPercentage,
          specifiedType: const FullType(String)),
      'total_btc_profit',
      serializers.serialize(object.totalBtcProfit,
          specifiedType: const FullType(String)),
      'total_usd_profit',
      serializers.serialize(object.totalUsdProfit,
          specifiedType: const FullType(String)),
      'pretty_display_type',
      serializers.serialize(object.prettyDisplayType,
          specifiedType: const FullType(String)),
    ];
    if (object.autoBalancePortfolioId != null) {
      result
        ..add('auto_balance_portfolio_id')
        ..add(serializers.serialize(object.autoBalancePortfolioId,
            specifiedType: const FullType(String)));
    }
    if (object.autoBalanceCurrencyChangeLimit != null) {
      result
        ..add('auto_balance_currency_change_limit')
        ..add(serializers.serialize(object.autoBalanceCurrencyChangeLimit,
            specifiedType: const FullType(String)));
    }
    if (object.lastAutoBalance != null) {
      result
        ..add('last_auto_balance')
        ..add(serializers.serialize(object.lastAutoBalance,
            specifiedType: const FullType(String)));
    }
    if (object.apiKey != null) {
      result
        ..add('api_key')
        ..add(serializers.serialize(object.apiKey,
            specifiedType: const FullType(String)));
    }
    if (object.autoBalanceMethod != null) {
      result
        ..add('auto_balance_method')
        ..add(serializers.serialize(object.autoBalanceMethod,
            specifiedType: const FullType(String)));
    }
    if (object.autoBalanceError != null) {
      result
        ..add('auto_balance_error')
        ..add(serializers.serialize(object.autoBalanceError,
            specifiedType: const FullType(String)));
    }
    if (object.lockReason != null) {
      result
        ..add('lock_reason')
        ..add(serializers.serialize(object.lockReason,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Account deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'auto_balance_period':
          result.autoBalancePeriod = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'auto_balance_portfolio_id':
          result.autoBalancePortfolioId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auto_balance_currency_change_limit':
          result.autoBalanceCurrencyChangeLimit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'autobalance_enabled':
          result.autobalanceEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_locked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'smart_trading_supported':
          result.smartTradingSupported = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'smart_selling_supported':
          result.smartSellingSupported = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'available_for_trading':
          result.availableForTrading = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap)) as BuiltMap;
          break;
        case 'stats_supported':
          result.statsSupported = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'trading_supported':
          result.tradingSupported = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'market_buy_supported':
          result.marketBuySupported = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'conditional_buy_supported':
          result.conditionalBuySupported = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'bots_allowed':
          result.botsAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_auto_balance':
          result.lastAutoBalance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'api_key':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auto_balance_method':
          result.autoBalanceMethod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auto_balance_error':
          result.autoBalanceError = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lock_reason':
          result.lockReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'btc_amount':
          result.btcAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'usd_amount':
          result.usdAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day_profit_btc':
          result.dayProfitBtc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day_profit_usd':
          result.dayProfitUsd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day_profit_btc_percentage':
          result.dayProfitBtcPercentage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day_profit_usd_percentage':
          result.dayProfitUsdPercentage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'btc_profit':
          result.btcProfit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'usd_profit':
          result.usdProfit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'usd_profit_percentage':
          result.usdProfitPercentage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'btc_profit_percentage':
          result.btcProfitPercentage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_btc_profit':
          result.totalBtcProfit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_usd_profit':
          result.totalUsdProfit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pretty_display_type':
          result.prettyDisplayType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Account extends Account {
  @override
  final int id;
  @override
  final int autoBalancePeriod;
  @override
  final String autoBalancePortfolioId;
  @override
  final String autoBalanceCurrencyChangeLimit;
  @override
  final bool autobalanceEnabled;
  @override
  final bool isLocked;
  @override
  final bool smartTradingSupported;
  @override
  final bool smartSellingSupported;
  @override
  final BuiltMap availableForTrading;
  @override
  final bool statsSupported;
  @override
  final bool tradingSupported;
  @override
  final bool marketBuySupported;
  @override
  final bool conditionalBuySupported;
  @override
  final bool botsAllowed;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String lastAutoBalance;
  @override
  final String apiKey;
  @override
  final String name;
  @override
  final String autoBalanceMethod;
  @override
  final String autoBalanceError;
  @override
  final String lockReason;
  @override
  final String btcAmount;
  @override
  final String usdAmount;
  @override
  final String dayProfitBtc;
  @override
  final String dayProfitUsd;
  @override
  final String dayProfitBtcPercentage;
  @override
  final String dayProfitUsdPercentage;
  @override
  final String btcProfit;
  @override
  final String usdProfit;
  @override
  final String usdProfitPercentage;
  @override
  final String btcProfitPercentage;
  @override
  final String totalBtcProfit;
  @override
  final String totalUsdProfit;
  @override
  final String prettyDisplayType;

  factory _$Account([void updates(AccountBuilder b)]) =>
      (new AccountBuilder()..update(updates)).build();

  _$Account._(
      {this.id,
      this.autoBalancePeriod,
      this.autoBalancePortfolioId,
      this.autoBalanceCurrencyChangeLimit,
      this.autobalanceEnabled,
      this.isLocked,
      this.smartTradingSupported,
      this.smartSellingSupported,
      this.availableForTrading,
      this.statsSupported,
      this.tradingSupported,
      this.marketBuySupported,
      this.conditionalBuySupported,
      this.botsAllowed,
      this.createdAt,
      this.updatedAt,
      this.lastAutoBalance,
      this.apiKey,
      this.name,
      this.autoBalanceMethod,
      this.autoBalanceError,
      this.lockReason,
      this.btcAmount,
      this.usdAmount,
      this.dayProfitBtc,
      this.dayProfitUsd,
      this.dayProfitBtcPercentage,
      this.dayProfitUsdPercentage,
      this.btcProfit,
      this.usdProfit,
      this.usdProfitPercentage,
      this.btcProfitPercentage,
      this.totalBtcProfit,
      this.totalUsdProfit,
      this.prettyDisplayType})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Account', 'id');
    }
    if (autoBalancePeriod == null) {
      throw new BuiltValueNullFieldError('Account', 'autoBalancePeriod');
    }
    if (autobalanceEnabled == null) {
      throw new BuiltValueNullFieldError('Account', 'autobalanceEnabled');
    }
    if (isLocked == null) {
      throw new BuiltValueNullFieldError('Account', 'isLocked');
    }
    if (smartTradingSupported == null) {
      throw new BuiltValueNullFieldError('Account', 'smartTradingSupported');
    }
    if (smartSellingSupported == null) {
      throw new BuiltValueNullFieldError('Account', 'smartSellingSupported');
    }
    if (availableForTrading == null) {
      throw new BuiltValueNullFieldError('Account', 'availableForTrading');
    }
    if (statsSupported == null) {
      throw new BuiltValueNullFieldError('Account', 'statsSupported');
    }
    if (tradingSupported == null) {
      throw new BuiltValueNullFieldError('Account', 'tradingSupported');
    }
    if (marketBuySupported == null) {
      throw new BuiltValueNullFieldError('Account', 'marketBuySupported');
    }
    if (conditionalBuySupported == null) {
      throw new BuiltValueNullFieldError('Account', 'conditionalBuySupported');
    }
    if (botsAllowed == null) {
      throw new BuiltValueNullFieldError('Account', 'botsAllowed');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Account', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('Account', 'updatedAt');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Account', 'name');
    }
    if (btcAmount == null) {
      throw new BuiltValueNullFieldError('Account', 'btcAmount');
    }
    if (usdAmount == null) {
      throw new BuiltValueNullFieldError('Account', 'usdAmount');
    }
    if (dayProfitBtc == null) {
      throw new BuiltValueNullFieldError('Account', 'dayProfitBtc');
    }
    if (dayProfitUsd == null) {
      throw new BuiltValueNullFieldError('Account', 'dayProfitUsd');
    }
    if (dayProfitBtcPercentage == null) {
      throw new BuiltValueNullFieldError('Account', 'dayProfitBtcPercentage');
    }
    if (dayProfitUsdPercentage == null) {
      throw new BuiltValueNullFieldError('Account', 'dayProfitUsdPercentage');
    }
    if (btcProfit == null) {
      throw new BuiltValueNullFieldError('Account', 'btcProfit');
    }
    if (usdProfit == null) {
      throw new BuiltValueNullFieldError('Account', 'usdProfit');
    }
    if (usdProfitPercentage == null) {
      throw new BuiltValueNullFieldError('Account', 'usdProfitPercentage');
    }
    if (btcProfitPercentage == null) {
      throw new BuiltValueNullFieldError('Account', 'btcProfitPercentage');
    }
    if (totalBtcProfit == null) {
      throw new BuiltValueNullFieldError('Account', 'totalBtcProfit');
    }
    if (totalUsdProfit == null) {
      throw new BuiltValueNullFieldError('Account', 'totalUsdProfit');
    }
    if (prettyDisplayType == null) {
      throw new BuiltValueNullFieldError('Account', 'prettyDisplayType');
    }
  }

  @override
  Account rebuild(void updates(AccountBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        id == other.id &&
        autoBalancePeriod == other.autoBalancePeriod &&
        autoBalancePortfolioId == other.autoBalancePortfolioId &&
        autoBalanceCurrencyChangeLimit ==
            other.autoBalanceCurrencyChangeLimit &&
        autobalanceEnabled == other.autobalanceEnabled &&
        isLocked == other.isLocked &&
        smartTradingSupported == other.smartTradingSupported &&
        smartSellingSupported == other.smartSellingSupported &&
        availableForTrading == other.availableForTrading &&
        statsSupported == other.statsSupported &&
        tradingSupported == other.tradingSupported &&
        marketBuySupported == other.marketBuySupported &&
        conditionalBuySupported == other.conditionalBuySupported &&
        botsAllowed == other.botsAllowed &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        lastAutoBalance == other.lastAutoBalance &&
        apiKey == other.apiKey &&
        name == other.name &&
        autoBalanceMethod == other.autoBalanceMethod &&
        autoBalanceError == other.autoBalanceError &&
        lockReason == other.lockReason &&
        btcAmount == other.btcAmount &&
        usdAmount == other.usdAmount &&
        dayProfitBtc == other.dayProfitBtc &&
        dayProfitUsd == other.dayProfitUsd &&
        dayProfitBtcPercentage == other.dayProfitBtcPercentage &&
        dayProfitUsdPercentage == other.dayProfitUsdPercentage &&
        btcProfit == other.btcProfit &&
        usdProfit == other.usdProfit &&
        usdProfitPercentage == other.usdProfitPercentage &&
        btcProfitPercentage == other.btcProfitPercentage &&
        totalBtcProfit == other.totalBtcProfit &&
        totalUsdProfit == other.totalUsdProfit &&
        prettyDisplayType == other.prettyDisplayType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), autoBalancePeriod.hashCode), autoBalancePortfolioId.hashCode), autoBalanceCurrencyChangeLimit.hashCode), autobalanceEnabled.hashCode), isLocked.hashCode), smartTradingSupported.hashCode), smartSellingSupported.hashCode), availableForTrading.hashCode), statsSupported.hashCode), tradingSupported.hashCode), marketBuySupported.hashCode), conditionalBuySupported.hashCode), botsAllowed.hashCode), createdAt.hashCode), updatedAt.hashCode),
                                                                                lastAutoBalance.hashCode),
                                                                            apiKey.hashCode),
                                                                        name.hashCode),
                                                                    autoBalanceMethod.hashCode),
                                                                autoBalanceError.hashCode),
                                                            lockReason.hashCode),
                                                        btcAmount.hashCode),
                                                    usdAmount.hashCode),
                                                dayProfitBtc.hashCode),
                                            dayProfitUsd.hashCode),
                                        dayProfitBtcPercentage.hashCode),
                                    dayProfitUsdPercentage.hashCode),
                                btcProfit.hashCode),
                            usdProfit.hashCode),
                        usdProfitPercentage.hashCode),
                    btcProfitPercentage.hashCode),
                totalBtcProfit.hashCode),
            totalUsdProfit.hashCode),
        prettyDisplayType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Account')
          ..add('id', id)
          ..add('autoBalancePeriod', autoBalancePeriod)
          ..add('autoBalancePortfolioId', autoBalancePortfolioId)
          ..add(
              'autoBalanceCurrencyChangeLimit', autoBalanceCurrencyChangeLimit)
          ..add('autobalanceEnabled', autobalanceEnabled)
          ..add('isLocked', isLocked)
          ..add('smartTradingSupported', smartTradingSupported)
          ..add('smartSellingSupported', smartSellingSupported)
          ..add('availableForTrading', availableForTrading)
          ..add('statsSupported', statsSupported)
          ..add('tradingSupported', tradingSupported)
          ..add('marketBuySupported', marketBuySupported)
          ..add('conditionalBuySupported', conditionalBuySupported)
          ..add('botsAllowed', botsAllowed)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('lastAutoBalance', lastAutoBalance)
          ..add('apiKey', apiKey)
          ..add('name', name)
          ..add('autoBalanceMethod', autoBalanceMethod)
          ..add('autoBalanceError', autoBalanceError)
          ..add('lockReason', lockReason)
          ..add('btcAmount', btcAmount)
          ..add('usdAmount', usdAmount)
          ..add('dayProfitBtc', dayProfitBtc)
          ..add('dayProfitUsd', dayProfitUsd)
          ..add('dayProfitBtcPercentage', dayProfitBtcPercentage)
          ..add('dayProfitUsdPercentage', dayProfitUsdPercentage)
          ..add('btcProfit', btcProfit)
          ..add('usdProfit', usdProfit)
          ..add('usdProfitPercentage', usdProfitPercentage)
          ..add('btcProfitPercentage', btcProfitPercentage)
          ..add('totalBtcProfit', totalBtcProfit)
          ..add('totalUsdProfit', totalUsdProfit)
          ..add('prettyDisplayType', prettyDisplayType))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _autoBalancePeriod;
  int get autoBalancePeriod => _$this._autoBalancePeriod;
  set autoBalancePeriod(int autoBalancePeriod) =>
      _$this._autoBalancePeriod = autoBalancePeriod;

  String _autoBalancePortfolioId;
  String get autoBalancePortfolioId => _$this._autoBalancePortfolioId;
  set autoBalancePortfolioId(String autoBalancePortfolioId) =>
      _$this._autoBalancePortfolioId = autoBalancePortfolioId;

  String _autoBalanceCurrencyChangeLimit;
  String get autoBalanceCurrencyChangeLimit =>
      _$this._autoBalanceCurrencyChangeLimit;
  set autoBalanceCurrencyChangeLimit(String autoBalanceCurrencyChangeLimit) =>
      _$this._autoBalanceCurrencyChangeLimit = autoBalanceCurrencyChangeLimit;

  bool _autobalanceEnabled;
  bool get autobalanceEnabled => _$this._autobalanceEnabled;
  set autobalanceEnabled(bool autobalanceEnabled) =>
      _$this._autobalanceEnabled = autobalanceEnabled;

  bool _isLocked;
  bool get isLocked => _$this._isLocked;
  set isLocked(bool isLocked) => _$this._isLocked = isLocked;

  bool _smartTradingSupported;
  bool get smartTradingSupported => _$this._smartTradingSupported;
  set smartTradingSupported(bool smartTradingSupported) =>
      _$this._smartTradingSupported = smartTradingSupported;

  bool _smartSellingSupported;
  bool get smartSellingSupported => _$this._smartSellingSupported;
  set smartSellingSupported(bool smartSellingSupported) =>
      _$this._smartSellingSupported = smartSellingSupported;

  BuiltMap _availableForTrading;
  BuiltMap get availableForTrading => _$this._availableForTrading;
  set availableForTrading(BuiltMap availableForTrading) =>
      _$this._availableForTrading = availableForTrading;

  bool _statsSupported;
  bool get statsSupported => _$this._statsSupported;
  set statsSupported(bool statsSupported) =>
      _$this._statsSupported = statsSupported;

  bool _tradingSupported;
  bool get tradingSupported => _$this._tradingSupported;
  set tradingSupported(bool tradingSupported) =>
      _$this._tradingSupported = tradingSupported;

  bool _marketBuySupported;
  bool get marketBuySupported => _$this._marketBuySupported;
  set marketBuySupported(bool marketBuySupported) =>
      _$this._marketBuySupported = marketBuySupported;

  bool _conditionalBuySupported;
  bool get conditionalBuySupported => _$this._conditionalBuySupported;
  set conditionalBuySupported(bool conditionalBuySupported) =>
      _$this._conditionalBuySupported = conditionalBuySupported;

  bool _botsAllowed;
  bool get botsAllowed => _$this._botsAllowed;
  set botsAllowed(bool botsAllowed) => _$this._botsAllowed = botsAllowed;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _lastAutoBalance;
  String get lastAutoBalance => _$this._lastAutoBalance;
  set lastAutoBalance(String lastAutoBalance) =>
      _$this._lastAutoBalance = lastAutoBalance;

  String _apiKey;
  String get apiKey => _$this._apiKey;
  set apiKey(String apiKey) => _$this._apiKey = apiKey;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _autoBalanceMethod;
  String get autoBalanceMethod => _$this._autoBalanceMethod;
  set autoBalanceMethod(String autoBalanceMethod) =>
      _$this._autoBalanceMethod = autoBalanceMethod;

  String _autoBalanceError;
  String get autoBalanceError => _$this._autoBalanceError;
  set autoBalanceError(String autoBalanceError) =>
      _$this._autoBalanceError = autoBalanceError;

  String _lockReason;
  String get lockReason => _$this._lockReason;
  set lockReason(String lockReason) => _$this._lockReason = lockReason;

  String _btcAmount;
  String get btcAmount => _$this._btcAmount;
  set btcAmount(String btcAmount) => _$this._btcAmount = btcAmount;

  String _usdAmount;
  String get usdAmount => _$this._usdAmount;
  set usdAmount(String usdAmount) => _$this._usdAmount = usdAmount;

  String _dayProfitBtc;
  String get dayProfitBtc => _$this._dayProfitBtc;
  set dayProfitBtc(String dayProfitBtc) => _$this._dayProfitBtc = dayProfitBtc;

  String _dayProfitUsd;
  String get dayProfitUsd => _$this._dayProfitUsd;
  set dayProfitUsd(String dayProfitUsd) => _$this._dayProfitUsd = dayProfitUsd;

  String _dayProfitBtcPercentage;
  String get dayProfitBtcPercentage => _$this._dayProfitBtcPercentage;
  set dayProfitBtcPercentage(String dayProfitBtcPercentage) =>
      _$this._dayProfitBtcPercentage = dayProfitBtcPercentage;

  String _dayProfitUsdPercentage;
  String get dayProfitUsdPercentage => _$this._dayProfitUsdPercentage;
  set dayProfitUsdPercentage(String dayProfitUsdPercentage) =>
      _$this._dayProfitUsdPercentage = dayProfitUsdPercentage;

  String _btcProfit;
  String get btcProfit => _$this._btcProfit;
  set btcProfit(String btcProfit) => _$this._btcProfit = btcProfit;

  String _usdProfit;
  String get usdProfit => _$this._usdProfit;
  set usdProfit(String usdProfit) => _$this._usdProfit = usdProfit;

  String _usdProfitPercentage;
  String get usdProfitPercentage => _$this._usdProfitPercentage;
  set usdProfitPercentage(String usdProfitPercentage) =>
      _$this._usdProfitPercentage = usdProfitPercentage;

  String _btcProfitPercentage;
  String get btcProfitPercentage => _$this._btcProfitPercentage;
  set btcProfitPercentage(String btcProfitPercentage) =>
      _$this._btcProfitPercentage = btcProfitPercentage;

  String _totalBtcProfit;
  String get totalBtcProfit => _$this._totalBtcProfit;
  set totalBtcProfit(String totalBtcProfit) =>
      _$this._totalBtcProfit = totalBtcProfit;

  String _totalUsdProfit;
  String get totalUsdProfit => _$this._totalUsdProfit;
  set totalUsdProfit(String totalUsdProfit) =>
      _$this._totalUsdProfit = totalUsdProfit;

  String _prettyDisplayType;
  String get prettyDisplayType => _$this._prettyDisplayType;
  set prettyDisplayType(String prettyDisplayType) =>
      _$this._prettyDisplayType = prettyDisplayType;

  AccountBuilder();

  AccountBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _autoBalancePeriod = _$v.autoBalancePeriod;
      _autoBalancePortfolioId = _$v.autoBalancePortfolioId;
      _autoBalanceCurrencyChangeLimit = _$v.autoBalanceCurrencyChangeLimit;
      _autobalanceEnabled = _$v.autobalanceEnabled;
      _isLocked = _$v.isLocked;
      _smartTradingSupported = _$v.smartTradingSupported;
      _smartSellingSupported = _$v.smartSellingSupported;
      _availableForTrading = _$v.availableForTrading;
      _statsSupported = _$v.statsSupported;
      _tradingSupported = _$v.tradingSupported;
      _marketBuySupported = _$v.marketBuySupported;
      _conditionalBuySupported = _$v.conditionalBuySupported;
      _botsAllowed = _$v.botsAllowed;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _lastAutoBalance = _$v.lastAutoBalance;
      _apiKey = _$v.apiKey;
      _name = _$v.name;
      _autoBalanceMethod = _$v.autoBalanceMethod;
      _autoBalanceError = _$v.autoBalanceError;
      _lockReason = _$v.lockReason;
      _btcAmount = _$v.btcAmount;
      _usdAmount = _$v.usdAmount;
      _dayProfitBtc = _$v.dayProfitBtc;
      _dayProfitUsd = _$v.dayProfitUsd;
      _dayProfitBtcPercentage = _$v.dayProfitBtcPercentage;
      _dayProfitUsdPercentage = _$v.dayProfitUsdPercentage;
      _btcProfit = _$v.btcProfit;
      _usdProfit = _$v.usdProfit;
      _usdProfitPercentage = _$v.usdProfitPercentage;
      _btcProfitPercentage = _$v.btcProfitPercentage;
      _totalBtcProfit = _$v.totalBtcProfit;
      _totalUsdProfit = _$v.totalUsdProfit;
      _prettyDisplayType = _$v.prettyDisplayType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Account;
  }

  @override
  void update(void updates(AccountBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Account build() {
    final _$result = _$v ??
        new _$Account._(
            id: id,
            autoBalancePeriod: autoBalancePeriod,
            autoBalancePortfolioId: autoBalancePortfolioId,
            autoBalanceCurrencyChangeLimit: autoBalanceCurrencyChangeLimit,
            autobalanceEnabled: autobalanceEnabled,
            isLocked: isLocked,
            smartTradingSupported: smartTradingSupported,
            smartSellingSupported: smartSellingSupported,
            availableForTrading: availableForTrading,
            statsSupported: statsSupported,
            tradingSupported: tradingSupported,
            marketBuySupported: marketBuySupported,
            conditionalBuySupported: conditionalBuySupported,
            botsAllowed: botsAllowed,
            createdAt: createdAt,
            updatedAt: updatedAt,
            lastAutoBalance: lastAutoBalance,
            apiKey: apiKey,
            name: name,
            autoBalanceMethod: autoBalanceMethod,
            autoBalanceError: autoBalanceError,
            lockReason: lockReason,
            btcAmount: btcAmount,
            usdAmount: usdAmount,
            dayProfitBtc: dayProfitBtc,
            dayProfitUsd: dayProfitUsd,
            dayProfitBtcPercentage: dayProfitBtcPercentage,
            dayProfitUsdPercentage: dayProfitUsdPercentage,
            btcProfit: btcProfit,
            usdProfit: usdProfit,
            usdProfitPercentage: usdProfitPercentage,
            btcProfitPercentage: btcProfitPercentage,
            totalBtcProfit: totalBtcProfit,
            totalUsdProfit: totalUsdProfit,
            prettyDisplayType: prettyDisplayType);
    replace(_$result);
    return _$result;
  }
}
