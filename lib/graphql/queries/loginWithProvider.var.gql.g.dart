// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginWithProvider.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginWithProviderVars> _$gLoginWithProviderVarsSerializer =
    new _$GLoginWithProviderVarsSerializer();

class _$GLoginWithProviderVarsSerializer
    implements StructuredSerializer<GLoginWithProviderVars> {
  @override
  final Iterable<Type> types = const [
    GLoginWithProviderVars,
    _$GLoginWithProviderVars
  ];
  @override
  final String wireName = 'GLoginWithProviderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginWithProviderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginWithProviderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginWithProviderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginWithProviderVars extends GLoginWithProviderVars {
  @override
  final String email;
  @override
  final String name;

  factory _$GLoginWithProviderVars(
          [void Function(GLoginWithProviderVarsBuilder)? updates]) =>
      (new GLoginWithProviderVarsBuilder()..update(updates)).build();

  _$GLoginWithProviderVars._({required this.email, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, 'GLoginWithProviderVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GLoginWithProviderVars', 'name');
  }

  @override
  GLoginWithProviderVars rebuild(
          void Function(GLoginWithProviderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginWithProviderVarsBuilder toBuilder() =>
      new GLoginWithProviderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginWithProviderVars &&
        email == other.email &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginWithProviderVars')
          ..add('email', email)
          ..add('name', name))
        .toString();
  }
}

class GLoginWithProviderVarsBuilder
    implements Builder<GLoginWithProviderVars, GLoginWithProviderVarsBuilder> {
  _$GLoginWithProviderVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GLoginWithProviderVarsBuilder();

  GLoginWithProviderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginWithProviderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginWithProviderVars;
  }

  @override
  void update(void Function(GLoginWithProviderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginWithProviderVars build() {
    final _$result = _$v ??
        new _$GLoginWithProviderVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GLoginWithProviderVars', 'email'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GLoginWithProviderVars', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
