// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addCartItem.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddCartItemVars> _$gAddCartItemVarsSerializer =
    new _$GAddCartItemVarsSerializer();

class _$GAddCartItemVarsSerializer
    implements StructuredSerializer<GAddCartItemVars> {
  @override
  final Iterable<Type> types = const [GAddCartItemVars, _$GAddCartItemVars];
  @override
  final String wireName = 'GAddCartItemVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddCartItemVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GCartItemData)),
    ];

    return result;
  }

  @override
  GAddCartItemVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddCartItemVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCartItemData))!
              as _i1.GCartItemData);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddCartItemVars extends GAddCartItemVars {
  @override
  final _i1.GCartItemData input;

  factory _$GAddCartItemVars(
          [void Function(GAddCartItemVarsBuilder)? updates]) =>
      (new GAddCartItemVarsBuilder()..update(updates)).build();

  _$GAddCartItemVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GAddCartItemVars', 'input');
  }

  @override
  GAddCartItemVars rebuild(void Function(GAddCartItemVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddCartItemVarsBuilder toBuilder() =>
      new GAddCartItemVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddCartItemVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddCartItemVars')
          ..add('input', input))
        .toString();
  }
}

class GAddCartItemVarsBuilder
    implements Builder<GAddCartItemVars, GAddCartItemVarsBuilder> {
  _$GAddCartItemVars? _$v;

  _i1.GCartItemDataBuilder? _input;
  _i1.GCartItemDataBuilder get input =>
      _$this._input ??= new _i1.GCartItemDataBuilder();
  set input(_i1.GCartItemDataBuilder? input) => _$this._input = input;

  GAddCartItemVarsBuilder();

  GAddCartItemVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddCartItemVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddCartItemVars;
  }

  @override
  void update(void Function(GAddCartItemVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddCartItemVars build() {
    _$GAddCartItemVars _$result;
    try {
      _$result = _$v ?? new _$GAddCartItemVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddCartItemVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
