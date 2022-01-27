// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserInfo.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserInfoData> _$gGetUserInfoDataSerializer =
    new _$GGetUserInfoDataSerializer();
Serializer<GGetUserInfoData_user> _$gGetUserInfoDataUserSerializer =
    new _$GGetUserInfoData_userSerializer();
Serializer<GGetUserInfoData_cart> _$gGetUserInfoDataCartSerializer =
    new _$GGetUserInfoData_cartSerializer();
Serializer<GGetUserInfoData_cart_images>
    _$gGetUserInfoDataCartImagesSerializer =
    new _$GGetUserInfoData_cart_imagesSerializer();

class _$GGetUserInfoDataSerializer
    implements StructuredSerializer<GGetUserInfoData> {
  @override
  final Iterable<Type> types = const [GGetUserInfoData, _$GGetUserInfoData];
  @override
  final String wireName = 'GGetUserInfoData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserInfoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(GGetUserInfoData_user)),
    ];
    Object? value;
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GGetUserInfoData_cart)])));
    }
    return result;
  }

  @override
  GGetUserInfoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserInfoDataBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetUserInfoData_user))!
              as GGetUserInfoData_user);
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetUserInfoData_cart)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserInfoData_userSerializer
    implements StructuredSerializer<GGetUserInfoData_user> {
  @override
  final Iterable<Type> types = const [
    GGetUserInfoData_user,
    _$GGetUserInfoData_user
  ];
  @override
  final String wireName = 'GGetUserInfoData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserInfoData_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isAdmin',
      serializers.serialize(object.isAdmin,
          specifiedType: const FullType(bool)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetUserInfoData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserInfoData_userBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$GGetUserInfoData_cartSerializer
    implements StructuredSerializer<GGetUserInfoData_cart> {
  @override
  final Iterable<Type> types = const [
    GGetUserInfoData_cart,
    _$GGetUserInfoData_cart
  ];
  @override
  final String wireName = 'GGetUserInfoData_cart';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserInfoData_cart object,
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
                const [const FullType(GGetUserInfoData_cart_images)])));
    }
    return result;
  }

  @override
  GGetUserInfoData_cart deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserInfoData_cartBuilder();

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
                const FullType(GGetUserInfoData_cart_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserInfoData_cart_imagesSerializer
    implements StructuredSerializer<GGetUserInfoData_cart_images> {
  @override
  final Iterable<Type> types = const [
    GGetUserInfoData_cart_images,
    _$GGetUserInfoData_cart_images
  ];
  @override
  final String wireName = 'GGetUserInfoData_cart_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserInfoData_cart_images object,
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
  GGetUserInfoData_cart_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserInfoData_cart_imagesBuilder();

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

class _$GGetUserInfoData extends GGetUserInfoData {
  @override
  final String G__typename;
  @override
  final GGetUserInfoData_user user;
  @override
  final BuiltList<GGetUserInfoData_cart>? cart;

  factory _$GGetUserInfoData(
          [void Function(GGetUserInfoDataBuilder)? updates]) =>
      (new GGetUserInfoDataBuilder()..update(updates)).build();

  _$GGetUserInfoData._(
      {required this.G__typename, required this.user, this.cart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserInfoData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(user, 'GGetUserInfoData', 'user');
  }

  @override
  GGetUserInfoData rebuild(void Function(GGetUserInfoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserInfoDataBuilder toBuilder() =>
      new GGetUserInfoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserInfoData &&
        G__typename == other.G__typename &&
        user == other.user &&
        cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), user.hashCode), cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserInfoData')
          ..add('G__typename', G__typename)
          ..add('user', user)
          ..add('cart', cart))
        .toString();
  }
}

class GGetUserInfoDataBuilder
    implements Builder<GGetUserInfoData, GGetUserInfoDataBuilder> {
  _$GGetUserInfoData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetUserInfoData_userBuilder? _user;
  GGetUserInfoData_userBuilder get user =>
      _$this._user ??= new GGetUserInfoData_userBuilder();
  set user(GGetUserInfoData_userBuilder? user) => _$this._user = user;

  ListBuilder<GGetUserInfoData_cart>? _cart;
  ListBuilder<GGetUserInfoData_cart> get cart =>
      _$this._cart ??= new ListBuilder<GGetUserInfoData_cart>();
  set cart(ListBuilder<GGetUserInfoData_cart>? cart) => _$this._cart = cart;

  GGetUserInfoDataBuilder() {
    GGetUserInfoData._initializeBuilder(this);
  }

  GGetUserInfoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user.toBuilder();
      _cart = $v.cart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserInfoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserInfoData;
  }

  @override
  void update(void Function(GGetUserInfoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserInfoData build() {
    _$GGetUserInfoData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserInfoData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserInfoData', 'G__typename'),
              user: user.build(),
              cart: _cart?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserInfoData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserInfoData_user extends GGetUserInfoData_user {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final bool isAdmin;
  @override
  final String email;
  @override
  final String id;

  factory _$GGetUserInfoData_user(
          [void Function(GGetUserInfoData_userBuilder)? updates]) =>
      (new GGetUserInfoData_userBuilder()..update(updates)).build();

  _$GGetUserInfoData_user._(
      {required this.G__typename,
      required this.name,
      required this.isAdmin,
      required this.email,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserInfoData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetUserInfoData_user', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isAdmin, 'GGetUserInfoData_user', 'isAdmin');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GGetUserInfoData_user', 'email');
    BuiltValueNullFieldError.checkNotNull(id, 'GGetUserInfoData_user', 'id');
  }

  @override
  GGetUserInfoData_user rebuild(
          void Function(GGetUserInfoData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserInfoData_userBuilder toBuilder() =>
      new GGetUserInfoData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserInfoData_user &&
        G__typename == other.G__typename &&
        name == other.name &&
        isAdmin == other.isAdmin &&
        email == other.email &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), name.hashCode),
                isAdmin.hashCode),
            email.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserInfoData_user')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('isAdmin', isAdmin)
          ..add('email', email)
          ..add('id', id))
        .toString();
  }
}

class GGetUserInfoData_userBuilder
    implements Builder<GGetUserInfoData_user, GGetUserInfoData_userBuilder> {
  _$GGetUserInfoData_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetUserInfoData_userBuilder() {
    GGetUserInfoData_user._initializeBuilder(this);
  }

  GGetUserInfoData_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _isAdmin = $v.isAdmin;
      _email = $v.email;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserInfoData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserInfoData_user;
  }

  @override
  void update(void Function(GGetUserInfoData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserInfoData_user build() {
    final _$result = _$v ??
        new _$GGetUserInfoData_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetUserInfoData_user', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetUserInfoData_user', 'name'),
            isAdmin: BuiltValueNullFieldError.checkNotNull(
                isAdmin, 'GGetUserInfoData_user', 'isAdmin'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GGetUserInfoData_user', 'email'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetUserInfoData_user', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserInfoData_cart extends GGetUserInfoData_cart {
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
  final BuiltList<GGetUserInfoData_cart_images>? images;

  factory _$GGetUserInfoData_cart(
          [void Function(GGetUserInfoData_cartBuilder)? updates]) =>
      (new GGetUserInfoData_cartBuilder()..update(updates)).build();

  _$GGetUserInfoData_cart._(
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
        G__typename, 'GGetUserInfoData_cart', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GGetUserInfoData_cart', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetUserInfoData_cart', 'name');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GGetUserInfoData_cart', 'price');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetUserInfoData_cart', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        discount, 'GGetUserInfoData_cart', 'discount');
    BuiltValueNullFieldError.checkNotNull(
        quantity, 'GGetUserInfoData_cart', 'quantity');
  }

  @override
  GGetUserInfoData_cart rebuild(
          void Function(GGetUserInfoData_cartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserInfoData_cartBuilder toBuilder() =>
      new GGetUserInfoData_cartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserInfoData_cart &&
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
    return (newBuiltValueToStringHelper('GGetUserInfoData_cart')
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

class GGetUserInfoData_cartBuilder
    implements Builder<GGetUserInfoData_cart, GGetUserInfoData_cartBuilder> {
  _$GGetUserInfoData_cart? _$v;

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

  ListBuilder<GGetUserInfoData_cart_images>? _images;
  ListBuilder<GGetUserInfoData_cart_images> get images =>
      _$this._images ??= new ListBuilder<GGetUserInfoData_cart_images>();
  set images(ListBuilder<GGetUserInfoData_cart_images>? images) =>
      _$this._images = images;

  GGetUserInfoData_cartBuilder() {
    GGetUserInfoData_cart._initializeBuilder(this);
  }

  GGetUserInfoData_cartBuilder get _$this {
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
  void replace(GGetUserInfoData_cart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserInfoData_cart;
  }

  @override
  void update(void Function(GGetUserInfoData_cartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserInfoData_cart build() {
    _$GGetUserInfoData_cart _$result;
    try {
      _$result = _$v ??
          new _$GGetUserInfoData_cart._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUserInfoData_cart', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetUserInfoData_cart', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetUserInfoData_cart', 'name'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GGetUserInfoData_cart', 'price'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetUserInfoData_cart', 'slug'),
              discount: BuiltValueNullFieldError.checkNotNull(
                  discount, 'GGetUserInfoData_cart', 'discount'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, 'GGetUserInfoData_cart', 'quantity'),
              images: _images?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUserInfoData_cart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserInfoData_cart_images extends GGetUserInfoData_cart_images {
  @override
  final String G__typename;
  @override
  final String secure_url;

  factory _$GGetUserInfoData_cart_images(
          [void Function(GGetUserInfoData_cart_imagesBuilder)? updates]) =>
      (new GGetUserInfoData_cart_imagesBuilder()..update(updates)).build();

  _$GGetUserInfoData_cart_images._(
      {required this.G__typename, required this.secure_url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUserInfoData_cart_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GGetUserInfoData_cart_images', 'secure_url');
  }

  @override
  GGetUserInfoData_cart_images rebuild(
          void Function(GGetUserInfoData_cart_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserInfoData_cart_imagesBuilder toBuilder() =>
      new GGetUserInfoData_cart_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserInfoData_cart_images &&
        G__typename == other.G__typename &&
        secure_url == other.secure_url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), secure_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserInfoData_cart_images')
          ..add('G__typename', G__typename)
          ..add('secure_url', secure_url))
        .toString();
  }
}

class GGetUserInfoData_cart_imagesBuilder
    implements
        Builder<GGetUserInfoData_cart_images,
            GGetUserInfoData_cart_imagesBuilder> {
  _$GGetUserInfoData_cart_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  GGetUserInfoData_cart_imagesBuilder() {
    GGetUserInfoData_cart_images._initializeBuilder(this);
  }

  GGetUserInfoData_cart_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _secure_url = $v.secure_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserInfoData_cart_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserInfoData_cart_images;
  }

  @override
  void update(void Function(GGetUserInfoData_cart_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserInfoData_cart_images build() {
    final _$result = _$v ??
        new _$GGetUserInfoData_cart_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetUserInfoData_cart_images', 'G__typename'),
            secure_url: BuiltValueNullFieldError.checkNotNull(
                secure_url, 'GGetUserInfoData_cart_images', 'secure_url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
