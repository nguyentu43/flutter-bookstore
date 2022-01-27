// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserInfo.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserInfoVars> _$gGetUserInfoVarsSerializer =
    new _$GGetUserInfoVarsSerializer();

class _$GGetUserInfoVarsSerializer
    implements StructuredSerializer<GGetUserInfoVars> {
  @override
  final Iterable<Type> types = const [GGetUserInfoVars, _$GGetUserInfoVars];
  @override
  final String wireName = 'GGetUserInfoVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserInfoVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetUserInfoVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetUserInfoVarsBuilder().build();
  }
}

class _$GGetUserInfoVars extends GGetUserInfoVars {
  factory _$GGetUserInfoVars(
          [void Function(GGetUserInfoVarsBuilder)? updates]) =>
      (new GGetUserInfoVarsBuilder()..update(updates)).build();

  _$GGetUserInfoVars._() : super._();

  @override
  GGetUserInfoVars rebuild(void Function(GGetUserInfoVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserInfoVarsBuilder toBuilder() =>
      new GGetUserInfoVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserInfoVars;
  }

  @override
  int get hashCode {
    return 909751917;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetUserInfoVars').toString();
  }
}

class GGetUserInfoVarsBuilder
    implements Builder<GGetUserInfoVars, GGetUserInfoVarsBuilder> {
  _$GGetUserInfoVars? _$v;

  GGetUserInfoVarsBuilder();

  @override
  void replace(GGetUserInfoVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserInfoVars;
  }

  @override
  void update(void Function(GGetUserInfoVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserInfoVars build() {
    final _$result = _$v ?? new _$GGetUserInfoVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
