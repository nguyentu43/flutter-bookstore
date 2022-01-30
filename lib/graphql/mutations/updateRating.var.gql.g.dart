// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateRating.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateRatingVars> _$gUpdateRatingVarsSerializer =
    new _$GUpdateRatingVarsSerializer();

class _$GUpdateRatingVarsSerializer
    implements StructuredSerializer<GUpdateRatingVars> {
  @override
  final Iterable<Type> types = const [GUpdateRatingVars, _$GUpdateRatingVars];
  @override
  final String wireName = 'GUpdateRatingVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateRatingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userID',
      serializers.serialize(object.userID,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GRatingData)));
    }
    return result;
  }

  @override
  GUpdateRatingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateRatingVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRatingData))!
              as _i1.GRatingData);
          break;
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateRatingVars extends GUpdateRatingVars {
  @override
  final _i1.GRatingData? input;
  @override
  final String userID;
  @override
  final String id;

  factory _$GUpdateRatingVars(
          [void Function(GUpdateRatingVarsBuilder)? updates]) =>
      (new GUpdateRatingVarsBuilder()..update(updates)).build();

  _$GUpdateRatingVars._({this.input, required this.userID, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userID, 'GUpdateRatingVars', 'userID');
    BuiltValueNullFieldError.checkNotNull(id, 'GUpdateRatingVars', 'id');
  }

  @override
  GUpdateRatingVars rebuild(void Function(GUpdateRatingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateRatingVarsBuilder toBuilder() =>
      new GUpdateRatingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateRatingVars &&
        input == other.input &&
        userID == other.userID &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, input.hashCode), userID.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateRatingVars')
          ..add('input', input)
          ..add('userID', userID)
          ..add('id', id))
        .toString();
  }
}

class GUpdateRatingVarsBuilder
    implements Builder<GUpdateRatingVars, GUpdateRatingVarsBuilder> {
  _$GUpdateRatingVars? _$v;

  _i1.GRatingDataBuilder? _input;
  _i1.GRatingDataBuilder get input =>
      _$this._input ??= new _i1.GRatingDataBuilder();
  set input(_i1.GRatingDataBuilder? input) => _$this._input = input;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateRatingVarsBuilder();

  GUpdateRatingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _userID = $v.userID;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateRatingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateRatingVars;
  }

  @override
  void update(void Function(GUpdateRatingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateRatingVars build() {
    _$GUpdateRatingVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateRatingVars._(
              input: _input?.build(),
              userID: BuiltValueNullFieldError.checkNotNull(
                  userID, 'GUpdateRatingVars', 'userID'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GUpdateRatingVars', 'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateRatingVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
