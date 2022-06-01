// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addRating.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddRatingVars> _$gAddRatingVarsSerializer =
    new _$GAddRatingVarsSerializer();

class _$GAddRatingVarsSerializer
    implements StructuredSerializer<GAddRatingVars> {
  @override
  final Iterable<Type> types = const [GAddRatingVars, _$GAddRatingVars];
  @override
  final String wireName = 'GAddRatingVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddRatingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userID',
      serializers.serialize(object.userID,
          specifiedType: const FullType(String)),
      'productID',
      serializers.serialize(object.productID,
          specifiedType: const FullType(String)),
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
  GAddRatingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddRatingVarsBuilder();

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
        case 'productID':
          result.productID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddRatingVars extends GAddRatingVars {
  @override
  final _i1.GRatingData? input;
  @override
  final String userID;
  @override
  final String productID;

  factory _$GAddRatingVars([void Function(GAddRatingVarsBuilder)? updates]) =>
      (new GAddRatingVarsBuilder()..update(updates)).build();

  _$GAddRatingVars._(
      {this.input, required this.userID, required this.productID})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userID, 'GAddRatingVars', 'userID');
    BuiltValueNullFieldError.checkNotNull(
        productID, 'GAddRatingVars', 'productID');
  }

  @override
  GAddRatingVars rebuild(void Function(GAddRatingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddRatingVarsBuilder toBuilder() =>
      new GAddRatingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddRatingVars &&
        input == other.input &&
        userID == other.userID &&
        productID == other.productID;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, input.hashCode), userID.hashCode), productID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddRatingVars')
          ..add('input', input)
          ..add('userID', userID)
          ..add('productID', productID))
        .toString();
  }
}

class GAddRatingVarsBuilder
    implements Builder<GAddRatingVars, GAddRatingVarsBuilder> {
  _$GAddRatingVars? _$v;

  _i1.GRatingDataBuilder? _input;
  _i1.GRatingDataBuilder get input =>
      _$this._input ??= new _i1.GRatingDataBuilder();
  set input(_i1.GRatingDataBuilder? input) => _$this._input = input;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _productID;
  String? get productID => _$this._productID;
  set productID(String? productID) => _$this._productID = productID;

  GAddRatingVarsBuilder();

  GAddRatingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _userID = $v.userID;
      _productID = $v.productID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddRatingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddRatingVars;
  }

  @override
  void update(void Function(GAddRatingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddRatingVars build() {
    _$GAddRatingVars _$result;
    try {
      _$result = _$v ??
          new _$GAddRatingVars._(
              input: _input?.build(),
              userID: BuiltValueNullFieldError.checkNotNull(
                  userID, 'GAddRatingVars', 'userID'),
              productID: BuiltValueNullFieldError.checkNotNull(
                  productID, 'GAddRatingVars', 'productID'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddRatingVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
