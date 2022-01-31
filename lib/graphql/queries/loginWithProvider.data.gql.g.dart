// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginWithProvider.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginWithProviderData> _$gLoginWithProviderDataSerializer =
    new _$GLoginWithProviderDataSerializer();

class _$GLoginWithProviderDataSerializer
    implements StructuredSerializer<GLoginWithProviderData> {
  @override
  final Iterable<Type> types = const [
    GLoginWithProviderData,
    _$GLoginWithProviderData
  ];
  @override
  final String wireName = 'GLoginWithProviderData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginWithProviderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginWithProviderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginWithProviderDataBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginWithProviderData extends GLoginWithProviderData {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GLoginWithProviderData(
          [void Function(GLoginWithProviderDataBuilder)? updates]) =>
      (new GLoginWithProviderDataBuilder()..update(updates)).build();

  _$GLoginWithProviderData._({required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoginWithProviderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, 'GLoginWithProviderData', 'token');
  }

  @override
  GLoginWithProviderData rebuild(
          void Function(GLoginWithProviderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginWithProviderDataBuilder toBuilder() =>
      new GLoginWithProviderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginWithProviderData &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginWithProviderData')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GLoginWithProviderDataBuilder
    implements Builder<GLoginWithProviderData, GLoginWithProviderDataBuilder> {
  _$GLoginWithProviderData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GLoginWithProviderDataBuilder() {
    GLoginWithProviderData._initializeBuilder(this);
  }

  GLoginWithProviderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginWithProviderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginWithProviderData;
  }

  @override
  void update(void Function(GLoginWithProviderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginWithProviderData build() {
    final _$result = _$v ??
        new _$GLoginWithProviderData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GLoginWithProviderData', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GLoginWithProviderData', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
