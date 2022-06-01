// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'removeWishlist.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveWishlistData> _$gRemoveWishlistDataSerializer =
    new _$GRemoveWishlistDataSerializer();

class _$GRemoveWishlistDataSerializer
    implements StructuredSerializer<GRemoveWishlistData> {
  @override
  final Iterable<Type> types = const [
    GRemoveWishlistData,
    _$GRemoveWishlistData
  ];
  @override
  final String wireName = 'GRemoveWishlistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveWishlistData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GRemoveWishlistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveWishlistDataBuilder();

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
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveWishlistData extends GRemoveWishlistData {
  @override
  final String G__typename;
  @override
  final bool? result;

  factory _$GRemoveWishlistData(
          [void Function(GRemoveWishlistDataBuilder)? updates]) =>
      (new GRemoveWishlistDataBuilder()..update(updates)).build();

  _$GRemoveWishlistData._({required this.G__typename, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRemoveWishlistData', 'G__typename');
  }

  @override
  GRemoveWishlistData rebuild(
          void Function(GRemoveWishlistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveWishlistDataBuilder toBuilder() =>
      new GRemoveWishlistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveWishlistData &&
        G__typename == other.G__typename &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveWishlistData')
          ..add('G__typename', G__typename)
          ..add('result', result))
        .toString();
  }
}

class GRemoveWishlistDataBuilder
    implements Builder<GRemoveWishlistData, GRemoveWishlistDataBuilder> {
  _$GRemoveWishlistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  GRemoveWishlistDataBuilder() {
    GRemoveWishlistData._initializeBuilder(this);
  }

  GRemoveWishlistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveWishlistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveWishlistData;
  }

  @override
  void update(void Function(GRemoveWishlistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveWishlistData build() {
    final _$result = _$v ??
        new _$GRemoveWishlistData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRemoveWishlistData', 'G__typename'),
            result: result);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
