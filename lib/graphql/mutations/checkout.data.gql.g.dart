// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutData> _$gCheckoutDataSerializer =
    new _$GCheckoutDataSerializer();
Serializer<GCheckoutData_order> _$gCheckoutDataOrderSerializer =
    new _$GCheckoutData_orderSerializer();

class _$GCheckoutDataSerializer implements StructuredSerializer<GCheckoutData> {
  @override
  final Iterable<Type> types = const [GCheckoutData, _$GCheckoutData];
  @override
  final String wireName = 'GCheckoutData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCheckoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order,
          specifiedType: const FullType(GCheckoutData_order)),
    ];

    return result;
  }

  @override
  GCheckoutData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCheckoutData_order))!
              as GCheckoutData_order);
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutData_orderSerializer
    implements StructuredSerializer<GCheckoutData_order> {
  @override
  final Iterable<Type> types = const [
    GCheckoutData_order,
    _$GCheckoutData_order
  ];
  @override
  final String wireName = 'GCheckoutData_order';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckoutData_order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCheckoutData_order deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutData_orderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutData extends GCheckoutData {
  @override
  final String G__typename;
  @override
  final GCheckoutData_order order;

  factory _$GCheckoutData([void Function(GCheckoutDataBuilder)? updates]) =>
      (new GCheckoutDataBuilder()..update(updates)).build();

  _$GCheckoutData._({required this.G__typename, required this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckoutData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(order, 'GCheckoutData', 'order');
  }

  @override
  GCheckoutData rebuild(void Function(GCheckoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutDataBuilder toBuilder() => new GCheckoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutData &&
        G__typename == other.G__typename &&
        order == other.order;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckoutData')
          ..add('G__typename', G__typename)
          ..add('order', order))
        .toString();
  }
}

class GCheckoutDataBuilder
    implements Builder<GCheckoutData, GCheckoutDataBuilder> {
  _$GCheckoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCheckoutData_orderBuilder? _order;
  GCheckoutData_orderBuilder get order =>
      _$this._order ??= new GCheckoutData_orderBuilder();
  set order(GCheckoutData_orderBuilder? order) => _$this._order = order;

  GCheckoutDataBuilder() {
    GCheckoutData._initializeBuilder(this);
  }

  GCheckoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _order = $v.order.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutData;
  }

  @override
  void update(void Function(GCheckoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutData build() {
    _$GCheckoutData _$result;
    try {
      _$result = _$v ??
          new _$GCheckoutData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCheckoutData', 'G__typename'),
              order: order.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        order.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCheckoutData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCheckoutData_order extends GCheckoutData_order {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String status;

  factory _$GCheckoutData_order(
          [void Function(GCheckoutData_orderBuilder)? updates]) =>
      (new GCheckoutData_orderBuilder()..update(updates)).build();

  _$GCheckoutData_order._(
      {required this.G__typename, required this.id, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckoutData_order', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GCheckoutData_order', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GCheckoutData_order', 'status');
  }

  @override
  GCheckoutData_order rebuild(
          void Function(GCheckoutData_orderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutData_orderBuilder toBuilder() =>
      new GCheckoutData_orderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutData_order &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckoutData_order')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status))
        .toString();
  }
}

class GCheckoutData_orderBuilder
    implements Builder<GCheckoutData_order, GCheckoutData_orderBuilder> {
  _$GCheckoutData_order? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GCheckoutData_orderBuilder() {
    GCheckoutData_order._initializeBuilder(this);
  }

  GCheckoutData_orderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutData_order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutData_order;
  }

  @override
  void update(void Function(GCheckoutData_orderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutData_order build() {
    final _$result = _$v ??
        new _$GCheckoutData_order._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCheckoutData_order', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCheckoutData_order', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GCheckoutData_order', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
