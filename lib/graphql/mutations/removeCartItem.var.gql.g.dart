// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'removeCartItem.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveCartItemVars> _$gRemoveCartItemVarsSerializer =
    new _$GRemoveCartItemVarsSerializer();

class _$GRemoveCartItemVarsSerializer
    implements StructuredSerializer<GRemoveCartItemVars> {
  @override
  final Iterable<Type> types = const [
    GRemoveCartItemVars,
    _$GRemoveCartItemVars
  ];
  @override
  final String wireName = 'GRemoveCartItemVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveCartItemVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'productID',
      serializers.serialize(object.productID,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRemoveCartItemVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveCartItemVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'productID':
          result.productID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveCartItemVars extends GRemoveCartItemVars {
  @override
  final String productID;

  factory _$GRemoveCartItemVars(
          [void Function(GRemoveCartItemVarsBuilder)? updates]) =>
      (new GRemoveCartItemVarsBuilder()..update(updates)).build();

  _$GRemoveCartItemVars._({required this.productID}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        productID, 'GRemoveCartItemVars', 'productID');
  }

  @override
  GRemoveCartItemVars rebuild(
          void Function(GRemoveCartItemVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveCartItemVarsBuilder toBuilder() =>
      new GRemoveCartItemVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveCartItemVars && productID == other.productID;
  }

  @override
  int get hashCode {
    return $jf($jc(0, productID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveCartItemVars')
          ..add('productID', productID))
        .toString();
  }
}

class GRemoveCartItemVarsBuilder
    implements Builder<GRemoveCartItemVars, GRemoveCartItemVarsBuilder> {
  _$GRemoveCartItemVars? _$v;

  String? _productID;
  String? get productID => _$this._productID;
  set productID(String? productID) => _$this._productID = productID;

  GRemoveCartItemVarsBuilder();

  GRemoveCartItemVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productID = $v.productID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveCartItemVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveCartItemVars;
  }

  @override
  void update(void Function(GRemoveCartItemVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveCartItemVars build() {
    final _$result = _$v ??
        new _$GRemoveCartItemVars._(
            productID: BuiltValueNullFieldError.checkNotNull(
                productID, 'GRemoveCartItemVars', 'productID'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
