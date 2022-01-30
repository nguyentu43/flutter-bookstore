// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'removeRating.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveRatingVars> _$gRemoveRatingVarsSerializer =
    new _$GRemoveRatingVarsSerializer();

class _$GRemoveRatingVarsSerializer
    implements StructuredSerializer<GRemoveRatingVars> {
  @override
  final Iterable<Type> types = const [GRemoveRatingVars, _$GRemoveRatingVars];
  @override
  final String wireName = 'GRemoveRatingVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveRatingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRemoveRatingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveRatingVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveRatingVars extends GRemoveRatingVars {
  @override
  final String id;

  factory _$GRemoveRatingVars(
          [void Function(GRemoveRatingVarsBuilder)? updates]) =>
      (new GRemoveRatingVarsBuilder()..update(updates)).build();

  _$GRemoveRatingVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GRemoveRatingVars', 'id');
  }

  @override
  GRemoveRatingVars rebuild(void Function(GRemoveRatingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveRatingVarsBuilder toBuilder() =>
      new GRemoveRatingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveRatingVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveRatingVars')..add('id', id))
        .toString();
  }
}

class GRemoveRatingVarsBuilder
    implements Builder<GRemoveRatingVars, GRemoveRatingVarsBuilder> {
  _$GRemoveRatingVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GRemoveRatingVarsBuilder();

  GRemoveRatingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveRatingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveRatingVars;
  }

  @override
  void update(void Function(GRemoveRatingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveRatingVars build() {
    final _$result = _$v ??
        new _$GRemoveRatingVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GRemoveRatingVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
