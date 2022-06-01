// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'removeWishlist.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveWishlistVars> _$gRemoveWishlistVarsSerializer =
    new _$GRemoveWishlistVarsSerializer();

class _$GRemoveWishlistVarsSerializer
    implements StructuredSerializer<GRemoveWishlistVars> {
  @override
  final Iterable<Type> types = const [
    GRemoveWishlistVars,
    _$GRemoveWishlistVars
  ];
  @override
  final String wireName = 'GRemoveWishlistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveWishlistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRemoveWishlistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveWishlistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveWishlistVars extends GRemoveWishlistVars {
  @override
  final String? id;

  factory _$GRemoveWishlistVars(
          [void Function(GRemoveWishlistVarsBuilder)? updates]) =>
      (new GRemoveWishlistVarsBuilder()..update(updates)).build();

  _$GRemoveWishlistVars._({this.id}) : super._();

  @override
  GRemoveWishlistVars rebuild(
          void Function(GRemoveWishlistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveWishlistVarsBuilder toBuilder() =>
      new GRemoveWishlistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveWishlistVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveWishlistVars')..add('id', id))
        .toString();
  }
}

class GRemoveWishlistVarsBuilder
    implements Builder<GRemoveWishlistVars, GRemoveWishlistVarsBuilder> {
  _$GRemoveWishlistVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GRemoveWishlistVarsBuilder();

  GRemoveWishlistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveWishlistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveWishlistVars;
  }

  @override
  void update(void Function(GRemoveWishlistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveWishlistVars build() {
    final _$result = _$v ?? new _$GRemoveWishlistVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
