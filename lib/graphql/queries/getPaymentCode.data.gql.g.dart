// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getPaymentCode.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPaymentCodeData> _$gGetPaymentCodeDataSerializer =
    new _$GGetPaymentCodeDataSerializer();

class _$GGetPaymentCodeDataSerializer
    implements StructuredSerializer<GGetPaymentCodeData> {
  @override
  final Iterable<Type> types = const [
    GGetPaymentCodeData,
    _$GGetPaymentCodeData
  ];
  @override
  final String wireName = 'GGetPaymentCodeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPaymentCodeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetPaymentCodeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPaymentCodeDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPaymentCodeData extends GGetPaymentCodeData {
  @override
  final String G__typename;
  @override
  final String code;

  factory _$GGetPaymentCodeData(
          [void Function(GGetPaymentCodeDataBuilder)? updates]) =>
      (new GGetPaymentCodeDataBuilder()..update(updates)).build();

  _$GGetPaymentCodeData._({required this.G__typename, required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetPaymentCodeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, 'GGetPaymentCodeData', 'code');
  }

  @override
  GGetPaymentCodeData rebuild(
          void Function(GGetPaymentCodeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPaymentCodeDataBuilder toBuilder() =>
      new GGetPaymentCodeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPaymentCodeData &&
        G__typename == other.G__typename &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetPaymentCodeData')
          ..add('G__typename', G__typename)
          ..add('code', code))
        .toString();
  }
}

class GGetPaymentCodeDataBuilder
    implements Builder<GGetPaymentCodeData, GGetPaymentCodeDataBuilder> {
  _$GGetPaymentCodeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GGetPaymentCodeDataBuilder() {
    GGetPaymentCodeData._initializeBuilder(this);
  }

  GGetPaymentCodeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPaymentCodeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPaymentCodeData;
  }

  @override
  void update(void Function(GGetPaymentCodeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetPaymentCodeData build() {
    final _$result = _$v ??
        new _$GGetPaymentCodeData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetPaymentCodeData', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'GGetPaymentCodeData', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
