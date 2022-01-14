// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginVars> _$gLoginVarsSerializer = new _$GLoginVarsSerializer();

class _$GLoginVarsSerializer implements StructuredSerializer<GLoginVars> {
  @override
  final Iterable<Type> types = const [GLoginVars, _$GLoginVars];
  @override
  final String wireName = 'GLoginVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginVarsBuilder();

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
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginVars extends GLoginVars {
  @override
  final String email;
  @override
  final String password;

  factory _$GLoginVars([void Function(GLoginVarsBuilder)? updates]) =>
      (new GLoginVarsBuilder()..update(updates)).build();

  _$GLoginVars._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'GLoginVars', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'GLoginVars', 'password');
  }

  @override
  GLoginVars rebuild(void Function(GLoginVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginVarsBuilder toBuilder() => new GLoginVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginVars &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginVars')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GLoginVarsBuilder implements Builder<GLoginVars, GLoginVarsBuilder> {
  _$GLoginVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GLoginVarsBuilder();

  GLoginVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginVars;
  }

  @override
  void update(void Function(GLoginVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginVars build() {
    final _$result = _$v ??
        new _$GLoginVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GLoginVars', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GLoginVars', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
