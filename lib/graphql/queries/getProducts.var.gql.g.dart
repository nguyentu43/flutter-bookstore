// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getProducts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProductsVars> _$gGetProductsVarsSerializer =
    new _$GGetProductsVarsSerializer();

class _$GGetProductsVarsSerializer
    implements StructuredSerializer<GGetProductsVars> {
  @override
  final Iterable<Type> types = const [GGetProductsVars, _$GGetProductsVars];
  @override
  final String wireName = 'GGetProductsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProductsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetProductsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductsVars extends GGetProductsVars {
  @override
  final String? search;
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GGetProductsVars(
          [void Function(GGetProductsVarsBuilder)? updates]) =>
      (new GGetProductsVarsBuilder()..update(updates)).build();

  _$GGetProductsVars._({this.search, this.offset, this.limit}) : super._();

  @override
  GGetProductsVars rebuild(void Function(GGetProductsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsVarsBuilder toBuilder() =>
      new GGetProductsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsVars &&
        search == other.search &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, search.hashCode), offset.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsVars')
          ..add('search', search)
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GGetProductsVarsBuilder
    implements Builder<GGetProductsVars, GGetProductsVarsBuilder> {
  _$GGetProductsVars? _$v;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGetProductsVarsBuilder();

  GGetProductsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search;
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsVars;
  }

  @override
  void update(void Function(GGetProductsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsVars build() {
    final _$result = _$v ??
        new _$GGetProductsVars._(search: search, offset: offset, limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
