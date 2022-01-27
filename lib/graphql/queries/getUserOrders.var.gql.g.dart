// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserOrders.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserOrdersVars> _$gGetUserOrdersVarsSerializer =
    new _$GGetUserOrdersVarsSerializer();

class _$GGetUserOrdersVarsSerializer
    implements StructuredSerializer<GGetUserOrdersVars> {
  @override
  final Iterable<Type> types = const [GGetUserOrdersVars, _$GGetUserOrdersVars];
  @override
  final String wireName = 'GGetUserOrdersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserOrdersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetUserOrdersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetUserOrdersVarsBuilder().build();
  }
}

class _$GGetUserOrdersVars extends GGetUserOrdersVars {
  factory _$GGetUserOrdersVars(
          [void Function(GGetUserOrdersVarsBuilder)? updates]) =>
      (new GGetUserOrdersVarsBuilder()..update(updates)).build();

  _$GGetUserOrdersVars._() : super._();

  @override
  GGetUserOrdersVars rebuild(
          void Function(GGetUserOrdersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserOrdersVarsBuilder toBuilder() =>
      new GGetUserOrdersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserOrdersVars;
  }

  @override
  int get hashCode {
    return 991522177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetUserOrdersVars').toString();
  }
}

class GGetUserOrdersVarsBuilder
    implements Builder<GGetUserOrdersVars, GGetUserOrdersVarsBuilder> {
  _$GGetUserOrdersVars? _$v;

  GGetUserOrdersVarsBuilder();

  @override
  void replace(GGetUserOrdersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserOrdersVars;
  }

  @override
  void update(void Function(GGetUserOrdersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserOrdersVars build() {
    final _$result = _$v ?? new _$GGetUserOrdersVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
