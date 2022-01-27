// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserOrders.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserOrdersData> _$gGetUserOrdersDataSerializer =
    new _$GGetUserOrdersDataSerializer();
Serializer<GGetUserOrdersData_orders> _$gGetUserOrdersDataOrdersSerializer =
    new _$GGetUserOrdersData_ordersSerializer();
Serializer<GGetUserOrdersData_orders_items>
    _$gGetUserOrdersDataOrdersItemsSerializer =
    new _$GGetUserOrdersData_orders_itemsSerializer();
Serializer<GGetUserOrdersData_orders_items_images>
    _$gGetUserOrdersDataOrdersItemsImagesSerializer =
    new _$GGetUserOrdersData_orders_items_imagesSerializer();

class _$GGetUserOrdersDataSerializer
    implements StructuredSerializer<GGetUserOrdersData> {
  @override
  final Iterable<Type> types = const [GGetUserOrdersData, _$GGetUserOrdersData];
  @override
  final String wireName = 'GGetUserOrdersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserOrdersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'orders',
      serializers.serialize(object.orders,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetUserOrdersData_orders)])),
    ];

    return result;
  }

  @override
  GGetUserOrdersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserOrdersDataBuilder();

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
        case 'orders':
          result.orders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetUserOrdersData_orders)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserOrdersData_ordersSerializer
    implements StructuredSerializer<GGetUserOrdersData_orders> {
  @override
  final Iterable<Type> types = const [
    GGetUserOrdersData_orders,
    _$GGetUserOrdersData_orders
  ];
  @override
  final String wireName = 'GGetUserOrdersData_orders';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserOrdersData_orders object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.items;
    if (value != null) {
      result
        ..add('items')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetUserOrdersData_orders_items)])));
    }
    return result;
  }

  @override
  GGetUserOrdersData_orders deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserOrdersData_ordersBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetUserOrdersData_orders_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserOrdersData_orders_itemsSerializer
    implements StructuredSerializer<GGetUserOrdersData_orders_items> {
  @override
  final Iterable<Type> types = const [
    GGetUserOrdersData_orders_items,
    _$GGetUserOrdersData_orders_items
  ];
  @override
  final String wireName = 'GGetUserOrdersData_orders_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserOrdersData_orders_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'discount',
      serializers.serialize(object.discount,
          specifiedType: const FullType(double)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetUserOrdersData_orders_items_images)
            ])));
    }
    return result;
  }

  @override
  GGetUserOrdersData_orders_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserOrdersData_orders_itemsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetUserOrdersData_orders_items_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserOrdersData_orders_items_imagesSerializer
    implements StructuredSerializer<GGetUserOrdersData_orders_items_images> {
  @override
  final Iterable<Type> types = const [
    GGetUserOrdersData_orders_items_images,
    _$GGetUserOrdersData_orders_items_images
  ];
  @override
  final String wireName = 'GGetUserOrdersData_orders_items_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserOrdersData_orders_items_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'secure_url',
      serializers.serialize(object.secure_url,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetUserOrdersData_orders_items_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserOrdersData_orders_items_imagesBuilder();

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
        case 'secure_url':
          result.secure_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserOrdersData extends GGetUserOrdersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetUserOrdersData_orders> orders;

  factory _$GGetUserOrdersData(
          [void Function(GGetUserOrdersDataBuilder)? updates]) =>
      (new GGetUserOrdersDataBuilder()..update(updates)).build();

  _$GGetUserOrdersData._({required this.G__typename, required this.orders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserOrdersData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        orders, 'GGetUserOrdersData', 'orders');
  }

  @override
  GGetUserOrdersData rebuild(
          void Function(GGetUserOrdersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserOrdersDataBuilder toBuilder() =>
      new GGetUserOrdersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserOrdersData &&
        G__typename == other.G__typename &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), orders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserOrdersData')
          ..add('G__typename', G__typename)
          ..add('orders', orders))
        .toString();
  }
}

class GGetUserOrdersDataBuilder
    implements Builder<GGetUserOrdersData, GGetUserOrdersDataBuilder> {
  _$GGetUserOrdersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetUserOrdersData_orders>? _orders;
  ListBuilder<GGetUserOrdersData_orders> get orders =>
      _$this._orders ??= new ListBuilder<GGetUserOrdersData_orders>();
  set orders(ListBuilder<GGetUserOrdersData_orders>? orders) =>
      _$this._orders = orders;

  GGetUserOrdersDataBuilder() {
    GGetUserOrdersData._initializeBuilder(this);
  }

  GGetUserOrdersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _orders = $v.orders.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserOrdersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserOrdersData;
  }

  @override
  void update(void Function(GGetUserOrdersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserOrdersData build() {
    _$GGetUserOrdersData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserOrdersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserOrdersData', 'G__typename'),
              orders: orders.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orders';
        orders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserOrdersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserOrdersData_orders extends GGetUserOrdersData_orders {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final double total;
  @override
  final String status;
  @override
  final String phone;
  @override
  final String createdAt;
  @override
  final BuiltList<GGetUserOrdersData_orders_items>? items;

  factory _$GGetUserOrdersData_orders(
          [void Function(GGetUserOrdersData_ordersBuilder)? updates]) =>
      (new GGetUserOrdersData_ordersBuilder()..update(updates)).build();

  _$GGetUserOrdersData_orders._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.address,
      required this.total,
      required this.status,
      required this.phone,
      required this.createdAt,
      this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserOrdersData_orders', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetUserOrdersData_orders', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetUserOrdersData_orders', 'name');
    BuiltValueNullFieldError.checkNotNull(
        address, 'GGetUserOrdersData_orders', 'address');
    BuiltValueNullFieldError.checkNotNull(
        total, 'GGetUserOrdersData_orders', 'total');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GGetUserOrdersData_orders', 'status');
    BuiltValueNullFieldError.checkNotNull(
        phone, 'GGetUserOrdersData_orders', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GGetUserOrdersData_orders', 'createdAt');
  }

  @override
  GGetUserOrdersData_orders rebuild(
          void Function(GGetUserOrdersData_ordersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserOrdersData_ordersBuilder toBuilder() =>
      new GGetUserOrdersData_ordersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserOrdersData_orders &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        total == other.total &&
        status == other.status &&
        phone == other.phone &&
        createdAt == other.createdAt &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                                name.hashCode),
                            address.hashCode),
                        total.hashCode),
                    status.hashCode),
                phone.hashCode),
            createdAt.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserOrdersData_orders')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('address', address)
          ..add('total', total)
          ..add('status', status)
          ..add('phone', phone)
          ..add('createdAt', createdAt)
          ..add('items', items))
        .toString();
  }
}

class GGetUserOrdersData_ordersBuilder
    implements
        Builder<GGetUserOrdersData_orders, GGetUserOrdersData_ordersBuilder> {
  _$GGetUserOrdersData_orders? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<GGetUserOrdersData_orders_items>? _items;
  ListBuilder<GGetUserOrdersData_orders_items> get items =>
      _$this._items ??= new ListBuilder<GGetUserOrdersData_orders_items>();
  set items(ListBuilder<GGetUserOrdersData_orders_items>? items) =>
      _$this._items = items;

  GGetUserOrdersData_ordersBuilder() {
    GGetUserOrdersData_orders._initializeBuilder(this);
  }

  GGetUserOrdersData_ordersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _address = $v.address;
      _total = $v.total;
      _status = $v.status;
      _phone = $v.phone;
      _createdAt = $v.createdAt;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserOrdersData_orders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserOrdersData_orders;
  }

  @override
  void update(void Function(GGetUserOrdersData_ordersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserOrdersData_orders build() {
    _$GGetUserOrdersData_orders _$result;
    try {
      _$result = _$v ??
          new _$GGetUserOrdersData_orders._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserOrdersData_orders', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetUserOrdersData_orders', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetUserOrdersData_orders', 'name'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'GGetUserOrdersData_orders', 'address'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'GGetUserOrdersData_orders', 'total'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'GGetUserOrdersData_orders', 'status'),
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, 'GGetUserOrdersData_orders', 'phone'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'GGetUserOrdersData_orders', 'createdAt'),
              items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserOrdersData_orders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserOrdersData_orders_items
    extends GGetUserOrdersData_orders_items {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final double price;
  @override
  final double discount;
  @override
  final int quantity;
  @override
  final BuiltList<GGetUserOrdersData_orders_items_images>? images;

  factory _$GGetUserOrdersData_orders_items(
          [void Function(GGetUserOrdersData_orders_itemsBuilder)? updates]) =>
      (new GGetUserOrdersData_orders_itemsBuilder()..update(updates)).build();

  _$GGetUserOrdersData_orders_items._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.slug,
      required this.price,
      required this.discount,
      required this.quantity,
      this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserOrdersData_orders_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetUserOrdersData_orders_items', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetUserOrdersData_orders_items', 'name');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetUserOrdersData_orders_items', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GGetUserOrdersData_orders_items', 'price');
    BuiltValueNullFieldError.checkNotNull(
        discount, 'GGetUserOrdersData_orders_items', 'discount');
    BuiltValueNullFieldError.checkNotNull(
        quantity, 'GGetUserOrdersData_orders_items', 'quantity');
  }

  @override
  GGetUserOrdersData_orders_items rebuild(
          void Function(GGetUserOrdersData_orders_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserOrdersData_orders_itemsBuilder toBuilder() =>
      new GGetUserOrdersData_orders_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserOrdersData_orders_items &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        price == other.price &&
        discount == other.discount &&
        quantity == other.quantity &&
        images == other.images;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            name.hashCode),
                        slug.hashCode),
                    price.hashCode),
                discount.hashCode),
            quantity.hashCode),
        images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserOrdersData_orders_items')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('price', price)
          ..add('discount', discount)
          ..add('quantity', quantity)
          ..add('images', images))
        .toString();
  }
}

class GGetUserOrdersData_orders_itemsBuilder
    implements
        Builder<GGetUserOrdersData_orders_items,
            GGetUserOrdersData_orders_itemsBuilder> {
  _$GGetUserOrdersData_orders_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ListBuilder<GGetUserOrdersData_orders_items_images>? _images;
  ListBuilder<GGetUserOrdersData_orders_items_images> get images =>
      _$this._images ??=
          new ListBuilder<GGetUserOrdersData_orders_items_images>();
  set images(ListBuilder<GGetUserOrdersData_orders_items_images>? images) =>
      _$this._images = images;

  GGetUserOrdersData_orders_itemsBuilder() {
    GGetUserOrdersData_orders_items._initializeBuilder(this);
  }

  GGetUserOrdersData_orders_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _price = $v.price;
      _discount = $v.discount;
      _quantity = $v.quantity;
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserOrdersData_orders_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserOrdersData_orders_items;
  }

  @override
  void update(void Function(GGetUserOrdersData_orders_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserOrdersData_orders_items build() {
    _$GGetUserOrdersData_orders_items _$result;
    try {
      _$result = _$v ??
          new _$GGetUserOrdersData_orders_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetUserOrdersData_orders_items', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetUserOrdersData_orders_items', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetUserOrdersData_orders_items', 'name'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetUserOrdersData_orders_items', 'slug'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GGetUserOrdersData_orders_items', 'price'),
              discount: BuiltValueNullFieldError.checkNotNull(
                  discount, 'GGetUserOrdersData_orders_items', 'discount'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, 'GGetUserOrdersData_orders_items', 'quantity'),
              images: _images?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserOrdersData_orders_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserOrdersData_orders_items_images
    extends GGetUserOrdersData_orders_items_images {
  @override
  final String G__typename;
  @override
  final String secure_url;

  factory _$GGetUserOrdersData_orders_items_images(
          [void Function(GGetUserOrdersData_orders_items_imagesBuilder)?
              updates]) =>
      (new GGetUserOrdersData_orders_items_imagesBuilder()..update(updates))
          .build();

  _$GGetUserOrdersData_orders_items_images._(
      {required this.G__typename, required this.secure_url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserOrdersData_orders_items_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GGetUserOrdersData_orders_items_images', 'secure_url');
  }

  @override
  GGetUserOrdersData_orders_items_images rebuild(
          void Function(GGetUserOrdersData_orders_items_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserOrdersData_orders_items_imagesBuilder toBuilder() =>
      new GGetUserOrdersData_orders_items_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserOrdersData_orders_items_images &&
        G__typename == other.G__typename &&
        secure_url == other.secure_url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), secure_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetUserOrdersData_orders_items_images')
          ..add('G__typename', G__typename)
          ..add('secure_url', secure_url))
        .toString();
  }
}

class GGetUserOrdersData_orders_items_imagesBuilder
    implements
        Builder<GGetUserOrdersData_orders_items_images,
            GGetUserOrdersData_orders_items_imagesBuilder> {
  _$GGetUserOrdersData_orders_items_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  GGetUserOrdersData_orders_items_imagesBuilder() {
    GGetUserOrdersData_orders_items_images._initializeBuilder(this);
  }

  GGetUserOrdersData_orders_items_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _secure_url = $v.secure_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserOrdersData_orders_items_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserOrdersData_orders_items_images;
  }

  @override
  void update(
      void Function(GGetUserOrdersData_orders_items_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserOrdersData_orders_items_images build() {
    final _$result = _$v ??
        new _$GGetUserOrdersData_orders_items_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetUserOrdersData_orders_items_images', 'G__typename'),
            secure_url: BuiltValueNullFieldError.checkNotNull(secure_url,
                'GGetUserOrdersData_orders_items_images', 'secure_url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
