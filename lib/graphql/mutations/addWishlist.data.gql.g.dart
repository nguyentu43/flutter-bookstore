// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addWishlist.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddWishlistData> _$gAddWishlistDataSerializer =
    new _$GAddWishlistDataSerializer();

class _$GAddWishlistDataSerializer
    implements StructuredSerializer<GAddWishlistData> {
  @override
  final Iterable<Type> types = const [GAddWishlistData, _$GAddWishlistData];
  @override
  final String wireName = 'GAddWishlistData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddWishlistData object,
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
  GAddWishlistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddWishlistDataBuilder();

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

class _$GAddWishlistData extends GAddWishlistData {
  @override
  final String G__typename;
  @override
  final bool? result;

  factory _$GAddWishlistData(
          [void Function(GAddWishlistDataBuilder)? updates]) =>
      (new GAddWishlistDataBuilder()..update(updates)).build();

  _$GAddWishlistData._({required this.G__typename, this.result}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAddWishlistData', 'G__typename');
  }

  @override
  GAddWishlistData rebuild(void Function(GAddWishlistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddWishlistDataBuilder toBuilder() =>
      new GAddWishlistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddWishlistData &&
        G__typename == other.G__typename &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddWishlistData')
          ..add('G__typename', G__typename)
          ..add('result', result))
        .toString();
  }
}

class GAddWishlistDataBuilder
    implements Builder<GAddWishlistData, GAddWishlistDataBuilder> {
  _$GAddWishlistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  GAddWishlistDataBuilder() {
    GAddWishlistData._initializeBuilder(this);
  }

  GAddWishlistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddWishlistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddWishlistData;
  }

  @override
  void update(void Function(GAddWishlistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddWishlistData build() {
    final _$result = _$v ??
        new _$GAddWishlistData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAddWishlistData', 'G__typename'),
            result: result);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
