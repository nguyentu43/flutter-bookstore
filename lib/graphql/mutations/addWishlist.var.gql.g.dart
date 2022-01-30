// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addWishlist.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddWishlistVars> _$gAddWishlistVarsSerializer =
    new _$GAddWishlistVarsSerializer();

class _$GAddWishlistVarsSerializer
    implements StructuredSerializer<GAddWishlistVars> {
  @override
  final Iterable<Type> types = const [GAddWishlistVars, _$GAddWishlistVars];
  @override
  final String wireName = 'GAddWishlistVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddWishlistVars object,
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
  GAddWishlistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddWishlistVarsBuilder();

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

class _$GAddWishlistVars extends GAddWishlistVars {
  @override
  final String? id;

  factory _$GAddWishlistVars(
          [void Function(GAddWishlistVarsBuilder)? updates]) =>
      (new GAddWishlistVarsBuilder()..update(updates)).build();

  _$GAddWishlistVars._({this.id}) : super._();

  @override
  GAddWishlistVars rebuild(void Function(GAddWishlistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddWishlistVarsBuilder toBuilder() =>
      new GAddWishlistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddWishlistVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddWishlistVars')..add('id', id))
        .toString();
  }
}

class GAddWishlistVarsBuilder
    implements Builder<GAddWishlistVars, GAddWishlistVarsBuilder> {
  _$GAddWishlistVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GAddWishlistVarsBuilder();

  GAddWishlistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddWishlistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddWishlistVars;
  }

  @override
  void update(void Function(GAddWishlistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddWishlistVars build() {
    final _$result = _$v ?? new _$GAddWishlistVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
