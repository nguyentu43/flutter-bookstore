// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getWishlist.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetWishlistData> _$gGetWishlistDataSerializer =
    new _$GGetWishlistDataSerializer();
Serializer<GGetWishlistData_products> _$gGetWishlistDataProductsSerializer =
    new _$GGetWishlistData_productsSerializer();
Serializer<GGetWishlistData_products_images>
    _$gGetWishlistDataProductsImagesSerializer =
    new _$GGetWishlistData_products_imagesSerializer();

class _$GGetWishlistDataSerializer
    implements StructuredSerializer<GGetWishlistData> {
  @override
  final Iterable<Type> types = const [GGetWishlistData, _$GGetWishlistData];
  @override
  final String wireName = 'GGetWishlistData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetWishlistData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.products;
    if (value != null) {
      result
        ..add('products')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GGetWishlistData_products)])));
    }
    return result;
  }

  @override
  GGetWishlistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetWishlistDataBuilder();

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
        case 'products':
          result.products.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetWishlistData_products)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetWishlistData_productsSerializer
    implements StructuredSerializer<GGetWishlistData_products> {
  @override
  final Iterable<Type> types = const [
    GGetWishlistData_products,
    _$GGetWishlistData_products
  ];
  @override
  final String wireName = 'GGetWishlistData_products';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetWishlistData_products object,
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
    ];
    Object? value;
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetWishlistData_products_images)])));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GGetWishlistData_products deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetWishlistData_productsBuilder();

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
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetWishlistData_products_images)
              ]))! as BuiltList<Object?>);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetWishlistData_products_imagesSerializer
    implements StructuredSerializer<GGetWishlistData_products_images> {
  @override
  final Iterable<Type> types = const [
    GGetWishlistData_products_images,
    _$GGetWishlistData_products_images
  ];
  @override
  final String wireName = 'GGetWishlistData_products_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetWishlistData_products_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'secure_url',
      serializers.serialize(object.secure_url,
          specifiedType: const FullType(String)),
      'public_id',
      serializers.serialize(object.public_id,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetWishlistData_products_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetWishlistData_products_imagesBuilder();

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
        case 'public_id':
          result.public_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetWishlistData extends GGetWishlistData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetWishlistData_products>? products;

  factory _$GGetWishlistData(
          [void Function(GGetWishlistDataBuilder)? updates]) =>
      (new GGetWishlistDataBuilder()..update(updates)).build();

  _$GGetWishlistData._({required this.G__typename, this.products}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetWishlistData', 'G__typename');
  }

  @override
  GGetWishlistData rebuild(void Function(GGetWishlistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetWishlistDataBuilder toBuilder() =>
      new GGetWishlistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetWishlistData &&
        G__typename == other.G__typename &&
        products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetWishlistData')
          ..add('G__typename', G__typename)
          ..add('products', products))
        .toString();
  }
}

class GGetWishlistDataBuilder
    implements Builder<GGetWishlistData, GGetWishlistDataBuilder> {
  _$GGetWishlistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetWishlistData_products>? _products;
  ListBuilder<GGetWishlistData_products> get products =>
      _$this._products ??= new ListBuilder<GGetWishlistData_products>();
  set products(ListBuilder<GGetWishlistData_products>? products) =>
      _$this._products = products;

  GGetWishlistDataBuilder() {
    GGetWishlistData._initializeBuilder(this);
  }

  GGetWishlistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _products = $v.products?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetWishlistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetWishlistData;
  }

  @override
  void update(void Function(GGetWishlistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetWishlistData build() {
    _$GGetWishlistData _$result;
    try {
      _$result = _$v ??
          new _$GGetWishlistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetWishlistData', 'G__typename'),
              products: _products?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        _products?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetWishlistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetWishlistData_products extends GGetWishlistData_products {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final BuiltList<GGetWishlistData_products_images>? images;
  @override
  final double price;
  @override
  final double? discount;

  factory _$GGetWishlistData_products(
          [void Function(GGetWishlistData_productsBuilder)? updates]) =>
      (new GGetWishlistData_productsBuilder()..update(updates)).build();

  _$GGetWishlistData_products._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.slug,
      this.images,
      required this.price,
      this.discount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetWishlistData_products', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetWishlistData_products', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetWishlistData_products', 'name');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetWishlistData_products', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GGetWishlistData_products', 'price');
  }

  @override
  GGetWishlistData_products rebuild(
          void Function(GGetWishlistData_productsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetWishlistData_productsBuilder toBuilder() =>
      new GGetWishlistData_productsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetWishlistData_products &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        images == other.images &&
        price == other.price &&
        discount == other.discount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    slug.hashCode),
                images.hashCode),
            price.hashCode),
        discount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetWishlistData_products')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('images', images)
          ..add('price', price)
          ..add('discount', discount))
        .toString();
  }
}

class GGetWishlistData_productsBuilder
    implements
        Builder<GGetWishlistData_products, GGetWishlistData_productsBuilder> {
  _$GGetWishlistData_products? _$v;

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

  ListBuilder<GGetWishlistData_products_images>? _images;
  ListBuilder<GGetWishlistData_products_images> get images =>
      _$this._images ??= new ListBuilder<GGetWishlistData_products_images>();
  set images(ListBuilder<GGetWishlistData_products_images>? images) =>
      _$this._images = images;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  GGetWishlistData_productsBuilder() {
    GGetWishlistData_products._initializeBuilder(this);
  }

  GGetWishlistData_productsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _images = $v.images?.toBuilder();
      _price = $v.price;
      _discount = $v.discount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetWishlistData_products other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetWishlistData_products;
  }

  @override
  void update(void Function(GGetWishlistData_productsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetWishlistData_products build() {
    _$GGetWishlistData_products _$result;
    try {
      _$result = _$v ??
          new _$GGetWishlistData_products._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetWishlistData_products', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetWishlistData_products', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetWishlistData_products', 'name'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetWishlistData_products', 'slug'),
              images: _images?.build(),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GGetWishlistData_products', 'price'),
              discount: discount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetWishlistData_products', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetWishlistData_products_images
    extends GGetWishlistData_products_images {
  @override
  final String G__typename;
  @override
  final String secure_url;
  @override
  final String public_id;

  factory _$GGetWishlistData_products_images(
          [void Function(GGetWishlistData_products_imagesBuilder)? updates]) =>
      (new GGetWishlistData_products_imagesBuilder()..update(updates)).build();

  _$GGetWishlistData_products_images._(
      {required this.G__typename,
      required this.secure_url,
      required this.public_id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetWishlistData_products_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GGetWishlistData_products_images', 'secure_url');
    BuiltValueNullFieldError.checkNotNull(
        public_id, 'GGetWishlistData_products_images', 'public_id');
  }

  @override
  GGetWishlistData_products_images rebuild(
          void Function(GGetWishlistData_products_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetWishlistData_products_imagesBuilder toBuilder() =>
      new GGetWishlistData_products_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetWishlistData_products_images &&
        G__typename == other.G__typename &&
        secure_url == other.secure_url &&
        public_id == other.public_id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), secure_url.hashCode),
        public_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetWishlistData_products_images')
          ..add('G__typename', G__typename)
          ..add('secure_url', secure_url)
          ..add('public_id', public_id))
        .toString();
  }
}

class GGetWishlistData_products_imagesBuilder
    implements
        Builder<GGetWishlistData_products_images,
            GGetWishlistData_products_imagesBuilder> {
  _$GGetWishlistData_products_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  String? _public_id;
  String? get public_id => _$this._public_id;
  set public_id(String? public_id) => _$this._public_id = public_id;

  GGetWishlistData_products_imagesBuilder() {
    GGetWishlistData_products_images._initializeBuilder(this);
  }

  GGetWishlistData_products_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _secure_url = $v.secure_url;
      _public_id = $v.public_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetWishlistData_products_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetWishlistData_products_images;
  }

  @override
  void update(void Function(GGetWishlistData_products_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetWishlistData_products_images build() {
    final _$result = _$v ??
        new _$GGetWishlistData_products_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetWishlistData_products_images', 'G__typename'),
            secure_url: BuiltValueNullFieldError.checkNotNull(
                secure_url, 'GGetWishlistData_products_images', 'secure_url'),
            public_id: BuiltValueNullFieldError.checkNotNull(
                public_id, 'GGetWishlistData_products_images', 'public_id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
