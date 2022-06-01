// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getWishlist.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetWishlistVars> _$gGetWishlistVarsSerializer =
    new _$GGetWishlistVarsSerializer();

class _$GGetWishlistVarsSerializer
    implements StructuredSerializer<GGetWishlistVars> {
  @override
  final Iterable<Type> types = const [GGetWishlistVars, _$GGetWishlistVars];
  @override
  final String wireName = 'GGetWishlistVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetWishlistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetWishlistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetWishlistVarsBuilder().build();
  }
}

class _$GGetWishlistVars extends GGetWishlistVars {
  factory _$GGetWishlistVars(
          [void Function(GGetWishlistVarsBuilder)? updates]) =>
      (new GGetWishlistVarsBuilder()..update(updates)).build();

  _$GGetWishlistVars._() : super._();

  @override
  GGetWishlistVars rebuild(void Function(GGetWishlistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetWishlistVarsBuilder toBuilder() =>
      new GGetWishlistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetWishlistVars;
  }

  @override
  int get hashCode {
    return 45403404;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetWishlistVars').toString();
  }
}

class GGetWishlistVarsBuilder
    implements Builder<GGetWishlistVars, GGetWishlistVarsBuilder> {
  _$GGetWishlistVars? _$v;

  GGetWishlistVarsBuilder();

  @override
  void replace(GGetWishlistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetWishlistVars;
  }

  @override
  void update(void Function(GGetWishlistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetWishlistVars build() {
    final _$result = _$v ?? new _$GGetWishlistVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
