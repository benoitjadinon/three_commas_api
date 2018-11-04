// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

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

Serializer<Exchange> _$exchangeSerializer = new _$ExchangeSerializer();

class _$ExchangeSerializer implements StructuredSerializer<Exchange> {
  @override
  final Iterable<Type> types = const [Exchange, _$Exchange];
  @override
  final String wireName = 'Exchange';

  @override
  Iterable serialize(Serializers serializers, Exchange object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'market_name',
      serializers.serialize(object.marketName,
          specifiedType: const FullType(String)),
      'market_url',
      serializers.serialize(object.marketUrl,
          specifiedType: const FullType(String)),
      'market_icon',
      serializers.serialize(object.marketIcon,
          specifiedType: const FullType(String)),
      'help_link',
      serializers.serialize(object.helpLink,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Exchange deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExchangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'market_name':
          result.marketName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'market_url':
          result.marketUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'market_icon':
          result.marketIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'help_link':
          result.helpLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Exchange extends Exchange {
  @override
  final String marketName;
  @override
  final String marketUrl;
  @override
  final String marketIcon;
  @override
  final String helpLink;

  factory _$Exchange([void updates(ExchangeBuilder b)]) =>
      (new ExchangeBuilder()..update(updates)).build();

  _$Exchange._(
      {this.marketName, this.marketUrl, this.marketIcon, this.helpLink})
      : super._() {
    if (marketName == null) {
      throw new BuiltValueNullFieldError('Exchange', 'marketName');
    }
    if (marketUrl == null) {
      throw new BuiltValueNullFieldError('Exchange', 'marketUrl');
    }
    if (marketIcon == null) {
      throw new BuiltValueNullFieldError('Exchange', 'marketIcon');
    }
    if (helpLink == null) {
      throw new BuiltValueNullFieldError('Exchange', 'helpLink');
    }
  }

  @override
  Exchange rebuild(void updates(ExchangeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangeBuilder toBuilder() => new ExchangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exchange &&
        marketName == other.marketName &&
        marketUrl == other.marketUrl &&
        marketIcon == other.marketIcon &&
        helpLink == other.helpLink;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, marketName.hashCode), marketUrl.hashCode),
            marketIcon.hashCode),
        helpLink.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Exchange')
          ..add('marketName', marketName)
          ..add('marketUrl', marketUrl)
          ..add('marketIcon', marketIcon)
          ..add('helpLink', helpLink))
        .toString();
  }
}

class ExchangeBuilder implements Builder<Exchange, ExchangeBuilder> {
  _$Exchange _$v;

  String _marketName;
  String get marketName => _$this._marketName;
  set marketName(String marketName) => _$this._marketName = marketName;

  String _marketUrl;
  String get marketUrl => _$this._marketUrl;
  set marketUrl(String marketUrl) => _$this._marketUrl = marketUrl;

  String _marketIcon;
  String get marketIcon => _$this._marketIcon;
  set marketIcon(String marketIcon) => _$this._marketIcon = marketIcon;

  String _helpLink;
  String get helpLink => _$this._helpLink;
  set helpLink(String helpLink) => _$this._helpLink = helpLink;

  ExchangeBuilder();

  ExchangeBuilder get _$this {
    if (_$v != null) {
      _marketName = _$v.marketName;
      _marketUrl = _$v.marketUrl;
      _marketIcon = _$v.marketIcon;
      _helpLink = _$v.helpLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exchange other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Exchange;
  }

  @override
  void update(void updates(ExchangeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Exchange build() {
    final _$result = _$v ??
        new _$Exchange._(
            marketName: marketName,
            marketUrl: marketUrl,
            marketIcon: marketIcon,
            helpLink: helpLink);
    replace(_$result);
    return _$result;
  }
}
