// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getPaymentCode.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPaymentCodeVars> _$gGetPaymentCodeVarsSerializer =
    new _$GGetPaymentCodeVarsSerializer();

class _$GGetPaymentCodeVarsSerializer
    implements StructuredSerializer<GGetPaymentCodeVars> {
  @override
  final Iterable<Type> types = const [
    GGetPaymentCodeVars,
    _$GGetPaymentCodeVars
  ];
  @override
  final String wireName = 'GGetPaymentCodeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPaymentCodeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetPaymentCodeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPaymentCodeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPaymentCodeVars extends GGetPaymentCodeVars {
  @override
  final int total;

  factory _$GGetPaymentCodeVars(
          [void Function(GGetPaymentCodeVarsBuilder)? updates]) =>
      (new GGetPaymentCodeVarsBuilder()..update(updates)).build();

  _$GGetPaymentCodeVars._({required this.total}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        total, 'GGetPaymentCodeVars', 'total');
  }

  @override
  GGetPaymentCodeVars rebuild(
          void Function(GGetPaymentCodeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPaymentCodeVarsBuilder toBuilder() =>
      new GGetPaymentCodeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPaymentCodeVars && total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(0, total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetPaymentCodeVars')
          ..add('total', total))
        .toString();
  }
}

class GGetPaymentCodeVarsBuilder
    implements Builder<GGetPaymentCodeVars, GGetPaymentCodeVarsBuilder> {
  _$GGetPaymentCodeVars? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GGetPaymentCodeVarsBuilder();

  GGetPaymentCodeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPaymentCodeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPaymentCodeVars;
  }

  @override
  void update(void Function(GGetPaymentCodeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetPaymentCodeVars build() {
    final _$result = _$v ??
        new _$GGetPaymentCodeVars._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, 'GGetPaymentCodeVars', 'total'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
