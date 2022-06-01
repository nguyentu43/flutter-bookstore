// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutVars> _$gCheckoutVarsSerializer =
    new _$GCheckoutVarsSerializer();

class _$GCheckoutVarsSerializer implements StructuredSerializer<GCheckoutVars> {
  @override
  final Iterable<Type> types = const [GCheckoutVars, _$GCheckoutVars];
  @override
  final String wireName = 'GCheckoutVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCheckoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GOrderData)),
    ];

    return result;
  }

  @override
  GCheckoutVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GOrderData))!
              as _i1.GOrderData);
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutVars extends GCheckoutVars {
  @override
  final _i1.GOrderData input;

  factory _$GCheckoutVars([void Function(GCheckoutVarsBuilder)? updates]) =>
      (new GCheckoutVarsBuilder()..update(updates)).build();

  _$GCheckoutVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GCheckoutVars', 'input');
  }

  @override
  GCheckoutVars rebuild(void Function(GCheckoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutVarsBuilder toBuilder() => new GCheckoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckoutVars')..add('input', input))
        .toString();
  }
}

class GCheckoutVarsBuilder
    implements Builder<GCheckoutVars, GCheckoutVarsBuilder> {
  _$GCheckoutVars? _$v;

  _i1.GOrderDataBuilder? _input;
  _i1.GOrderDataBuilder get input =>
      _$this._input ??= new _i1.GOrderDataBuilder();
  set input(_i1.GOrderDataBuilder? input) => _$this._input = input;

  GCheckoutVarsBuilder();

  GCheckoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutVars;
  }

  @override
  void update(void Function(GCheckoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutVars build() {
    _$GCheckoutVars _$result;
    try {
      _$result = _$v ?? new _$GCheckoutVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCheckoutVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
