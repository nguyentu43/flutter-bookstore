// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'removeCartItem.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveCartItemData> _$gRemoveCartItemDataSerializer =
    new _$GRemoveCartItemDataSerializer();
Serializer<GRemoveCartItemData_cart> _$gRemoveCartItemDataCartSerializer =
    new _$GRemoveCartItemData_cartSerializer();
Serializer<GRemoveCartItemData_cart_images>
    _$gRemoveCartItemDataCartImagesSerializer =
    new _$GRemoveCartItemData_cart_imagesSerializer();

class _$GRemoveCartItemDataSerializer
    implements StructuredSerializer<GRemoveCartItemData> {
  @override
  final Iterable<Type> types = const [
    GRemoveCartItemData,
    _$GRemoveCartItemData
  ];
  @override
  final String wireName = 'GRemoveCartItemData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveCartItemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GRemoveCartItemData_cart)])));
    }
    return result;
  }

  @override
  GRemoveCartItemData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveCartItemDataBuilder();

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
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GRemoveCartItemData_cart)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveCartItemData_cartSerializer
    implements StructuredSerializer<GRemoveCartItemData_cart> {
  @override
  final Iterable<Type> types = const [
    GRemoveCartItemData_cart,
    _$GRemoveCartItemData_cart
  ];
  @override
  final String wireName = 'GRemoveCartItemData_cart';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveCartItemData_cart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(GRemoveCartItemData_cart_images)])));
    }
    return result;
  }

  @override
  GRemoveCartItemData_cart deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveCartItemData_cartBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
                const FullType(GRemoveCartItemData_cart_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveCartItemData_cart_imagesSerializer
    implements StructuredSerializer<GRemoveCartItemData_cart_images> {
  @override
  final Iterable<Type> types = const [
    GRemoveCartItemData_cart_images,
    _$GRemoveCartItemData_cart_images
  ];
  @override
  final String wireName = 'GRemoveCartItemData_cart_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveCartItemData_cart_images object,
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
  GRemoveCartItemData_cart_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveCartItemData_cart_imagesBuilder();

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

class _$GRemoveCartItemData extends GRemoveCartItemData {
  @override
  final String G__typename;
  @override
  final BuiltList<GRemoveCartItemData_cart>? cart;

  factory _$GRemoveCartItemData(
          [void Function(GRemoveCartItemDataBuilder)? updates]) =>
      (new GRemoveCartItemDataBuilder()..update(updates)).build();

  _$GRemoveCartItemData._({required this.G__typename, this.cart}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRemoveCartItemData', 'G__typename');
  }

  @override
  GRemoveCartItemData rebuild(
          void Function(GRemoveCartItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveCartItemDataBuilder toBuilder() =>
      new GRemoveCartItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveCartItemData &&
        G__typename == other.G__typename &&
        cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveCartItemData')
          ..add('G__typename', G__typename)
          ..add('cart', cart))
        .toString();
  }
}

class GRemoveCartItemDataBuilder
    implements Builder<GRemoveCartItemData, GRemoveCartItemDataBuilder> {
  _$GRemoveCartItemData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GRemoveCartItemData_cart>? _cart;
  ListBuilder<GRemoveCartItemData_cart> get cart =>
      _$this._cart ??= new ListBuilder<GRemoveCartItemData_cart>();
  set cart(ListBuilder<GRemoveCartItemData_cart>? cart) => _$this._cart = cart;

  GRemoveCartItemDataBuilder() {
    GRemoveCartItemData._initializeBuilder(this);
  }

  GRemoveCartItemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cart = $v.cart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveCartItemData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveCartItemData;
  }

  @override
  void update(void Function(GRemoveCartItemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveCartItemData build() {
    _$GRemoveCartItemData _$result;
    try {
      _$result = _$v ??
          new _$GRemoveCartItemData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRemoveCartItemData', 'G__typename'),
              cart: _cart?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRemoveCartItemData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveCartItemData_cart extends GRemoveCartItemData_cart {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String slug;
  @override
  final double discount;
  @override
  final int quantity;
  @override
  final BuiltList<GRemoveCartItemData_cart_images>? images;

  factory _$GRemoveCartItemData_cart(
          [void Function(GRemoveCartItemData_cartBuilder)? updates]) =>
      (new GRemoveCartItemData_cartBuilder()..update(updates)).build();

  _$GRemoveCartItemData_cart._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.price,
      required this.slug,
      required this.discount,
      required this.quantity,
      this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRemoveCartItemData_cart', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GRemoveCartItemData_cart', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GRemoveCartItemData_cart', 'name');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GRemoveCartItemData_cart', 'price');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GRemoveCartItemData_cart', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        discount, 'GRemoveCartItemData_cart', 'discount');
    BuiltValueNullFieldError.checkNotNull(
        quantity, 'GRemoveCartItemData_cart', 'quantity');
  }

  @override
  GRemoveCartItemData_cart rebuild(
          void Function(GRemoveCartItemData_cartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveCartItemData_cartBuilder toBuilder() =>
      new GRemoveCartItemData_cartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveCartItemData_cart &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        slug == other.slug &&
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
                        price.hashCode),
                    slug.hashCode),
                discount.hashCode),
            quantity.hashCode),
        images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveCartItemData_cart')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('slug', slug)
          ..add('discount', discount)
          ..add('quantity', quantity)
          ..add('images', images))
        .toString();
  }
}

class GRemoveCartItemData_cartBuilder
    implements
        Builder<GRemoveCartItemData_cart, GRemoveCartItemData_cartBuilder> {
  _$GRemoveCartItemData_cart? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ListBuilder<GRemoveCartItemData_cart_images>? _images;
  ListBuilder<GRemoveCartItemData_cart_images> get images =>
      _$this._images ??= new ListBuilder<GRemoveCartItemData_cart_images>();
  set images(ListBuilder<GRemoveCartItemData_cart_images>? images) =>
      _$this._images = images;

  GRemoveCartItemData_cartBuilder() {
    GRemoveCartItemData_cart._initializeBuilder(this);
  }

  GRemoveCartItemData_cartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _slug = $v.slug;
      _discount = $v.discount;
      _quantity = $v.quantity;
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveCartItemData_cart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveCartItemData_cart;
  }

  @override
  void update(void Function(GRemoveCartItemData_cartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveCartItemData_cart build() {
    _$GRemoveCartItemData_cart _$result;
    try {
      _$result = _$v ??
          new _$GRemoveCartItemData_cart._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRemoveCartItemData_cart', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GRemoveCartItemData_cart', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GRemoveCartItemData_cart', 'name'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GRemoveCartItemData_cart', 'price'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GRemoveCartItemData_cart', 'slug'),
              discount: BuiltValueNullFieldError.checkNotNull(
                  discount, 'GRemoveCartItemData_cart', 'discount'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, 'GRemoveCartItemData_cart', 'quantity'),
              images: _images?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRemoveCartItemData_cart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveCartItemData_cart_images
    extends GRemoveCartItemData_cart_images {
  @override
  final String G__typename;
  @override
  final String secure_url;

  factory _$GRemoveCartItemData_cart_images(
          [void Function(GRemoveCartItemData_cart_imagesBuilder)? updates]) =>
      (new GRemoveCartItemData_cart_imagesBuilder()..update(updates)).build();

  _$GRemoveCartItemData_cart_images._(
      {required this.G__typename, required this.secure_url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRemoveCartItemData_cart_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GRemoveCartItemData_cart_images', 'secure_url');
  }

  @override
  GRemoveCartItemData_cart_images rebuild(
          void Function(GRemoveCartItemData_cart_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveCartItemData_cart_imagesBuilder toBuilder() =>
      new GRemoveCartItemData_cart_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveCartItemData_cart_images &&
        G__typename == other.G__typename &&
        secure_url == other.secure_url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), secure_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveCartItemData_cart_images')
          ..add('G__typename', G__typename)
          ..add('secure_url', secure_url))
        .toString();
  }
}

class GRemoveCartItemData_cart_imagesBuilder
    implements
        Builder<GRemoveCartItemData_cart_images,
            GRemoveCartItemData_cart_imagesBuilder> {
  _$GRemoveCartItemData_cart_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  GRemoveCartItemData_cart_imagesBuilder() {
    GRemoveCartItemData_cart_images._initializeBuilder(this);
  }

  GRemoveCartItemData_cart_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _secure_url = $v.secure_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveCartItemData_cart_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveCartItemData_cart_images;
  }

  @override
  void update(void Function(GRemoveCartItemData_cart_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveCartItemData_cart_images build() {
    final _$result = _$v ??
        new _$GRemoveCartItemData_cart_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRemoveCartItemData_cart_images', 'G__typename'),
            secure_url: BuiltValueNullFieldError.checkNotNull(
                secure_url, 'GRemoveCartItemData_cart_images', 'secure_url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
