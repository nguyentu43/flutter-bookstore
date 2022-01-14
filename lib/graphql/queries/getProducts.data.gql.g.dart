// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getProducts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProductsData> _$gGetProductsDataSerializer =
    new _$GGetProductsDataSerializer();
Serializer<GGetProductsData_products> _$gGetProductsDataProductsSerializer =
    new _$GGetProductsData_productsSerializer();
Serializer<GGetProductsData_products_images>
    _$gGetProductsDataProductsImagesSerializer =
    new _$GGetProductsData_products_imagesSerializer();
Serializer<GGetProductsData_products_authors>
    _$gGetProductsDataProductsAuthorsSerializer =
    new _$GGetProductsData_products_authorsSerializer();
Serializer<GGetProductsData_products_category>
    _$gGetProductsDataProductsCategorySerializer =
    new _$GGetProductsData_products_categorySerializer();
Serializer<GGetProductsData_products_category_parent>
    _$gGetProductsDataProductsCategoryParentSerializer =
    new _$GGetProductsData_products_category_parentSerializer();
Serializer<GGetProductsData_products_category_parent_parent>
    _$gGetProductsDataProductsCategoryParentParentSerializer =
    new _$GGetProductsData_products_category_parent_parentSerializer();

class _$GGetProductsDataSerializer
    implements StructuredSerializer<GGetProductsData> {
  @override
  final Iterable<Type> types = const [GGetProductsData, _$GGetProductsData];
  @override
  final String wireName = 'GGetProductsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProductsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'products',
      serializers.serialize(object.products,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetProductsData_products)])),
    ];

    return result;
  }

  @override
  GGetProductsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsDataBuilder();

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
                const FullType(GGetProductsData_products)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductsData_productsSerializer
    implements StructuredSerializer<GGetProductsData_products> {
  @override
  final Iterable<Type> types = const [
    GGetProductsData_products,
    _$GGetProductsData_products
  ];
  @override
  final String wireName = 'GGetProductsData_products';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductsData_products object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetProductsData_products_images)])));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authors;
    if (value != null) {
      result
        ..add('authors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetProductsData_products_authors)])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetProductsData_products_category)));
    }
    return result;
  }

  @override
  GGetProductsData_products deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsData_productsBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductsData_products_images)
              ]))! as BuiltList<Object?>);
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authors':
          result.authors.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductsData_products_authors)
              ]))! as BuiltList<Object?>);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetProductsData_products_category))!
              as GGetProductsData_products_category);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductsData_products_imagesSerializer
    implements StructuredSerializer<GGetProductsData_products_images> {
  @override
  final Iterable<Type> types = const [
    GGetProductsData_products_images,
    _$GGetProductsData_products_images
  ];
  @override
  final String wireName = 'GGetProductsData_products_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductsData_products_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'public_id',
      serializers.serialize(object.public_id,
          specifiedType: const FullType(String)),
      'secure_url',
      serializers.serialize(object.secure_url,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductsData_products_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsData_products_imagesBuilder();

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
        case 'public_id':
          result.public_id = serializers.deserialize(value,
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

class _$GGetProductsData_products_authorsSerializer
    implements StructuredSerializer<GGetProductsData_products_authors> {
  @override
  final Iterable<Type> types = const [
    GGetProductsData_products_authors,
    _$GGetProductsData_products_authors
  ];
  @override
  final String wireName = 'GGetProductsData_products_authors';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductsData_products_authors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductsData_products_authors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsData_products_authorsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetProductsData_products_categorySerializer
    implements StructuredSerializer<GGetProductsData_products_category> {
  @override
  final Iterable<Type> types = const [
    GGetProductsData_products_category,
    _$GGetProductsData_products_category
  ];
  @override
  final String wireName = 'GGetProductsData_products_category';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductsData_products_category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.parent;
    if (value != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetProductsData_products_category_parent)));
    }
    return result;
  }

  @override
  GGetProductsData_products_category deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsData_products_categoryBuilder();

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
        case 'parent':
          result.parent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetProductsData_products_category_parent))!
              as GGetProductsData_products_category_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductsData_products_category_parentSerializer
    implements StructuredSerializer<GGetProductsData_products_category_parent> {
  @override
  final Iterable<Type> types = const [
    GGetProductsData_products_category_parent,
    _$GGetProductsData_products_category_parent
  ];
  @override
  final String wireName = 'GGetProductsData_products_category_parent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductsData_products_category_parent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.parent;
    if (value != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GGetProductsData_products_category_parent_parent)));
    }
    return result;
  }

  @override
  GGetProductsData_products_category_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsData_products_category_parentBuilder();

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
        case 'parent':
          result.parent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetProductsData_products_category_parent_parent))!
              as GGetProductsData_products_category_parent_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductsData_products_category_parent_parentSerializer
    implements
        StructuredSerializer<GGetProductsData_products_category_parent_parent> {
  @override
  final Iterable<Type> types = const [
    GGetProductsData_products_category_parent_parent,
    _$GGetProductsData_products_category_parent_parent
  ];
  @override
  final String wireName = 'GGetProductsData_products_category_parent_parent';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductsData_products_category_parent_parent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductsData_products_category_parent_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductsData_products_category_parent_parentBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetProductsData extends GGetProductsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetProductsData_products> products;

  factory _$GGetProductsData(
          [void Function(GGetProductsDataBuilder)? updates]) =>
      (new GGetProductsDataBuilder()..update(updates)).build();

  _$GGetProductsData._({required this.G__typename, required this.products})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        products, 'GGetProductsData', 'products');
  }

  @override
  GGetProductsData rebuild(void Function(GGetProductsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsDataBuilder toBuilder() =>
      new GGetProductsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData &&
        G__typename == other.G__typename &&
        products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsData')
          ..add('G__typename', G__typename)
          ..add('products', products))
        .toString();
  }
}

class GGetProductsDataBuilder
    implements Builder<GGetProductsData, GGetProductsDataBuilder> {
  _$GGetProductsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetProductsData_products>? _products;
  ListBuilder<GGetProductsData_products> get products =>
      _$this._products ??= new ListBuilder<GGetProductsData_products>();
  set products(ListBuilder<GGetProductsData_products>? products) =>
      _$this._products = products;

  GGetProductsDataBuilder() {
    GGetProductsData._initializeBuilder(this);
  }

  GGetProductsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData;
  }

  @override
  void update(void Function(GGetProductsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData build() {
    _$GGetProductsData _$result;
    try {
      _$result = _$v ??
          new _$GGetProductsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetProductsData', 'G__typename'),
              products: products.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductsData_products extends GGetProductsData_products {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final double price;
  @override
  final BuiltList<GGetProductsData_products_images>? images;
  @override
  final double? discount;
  @override
  final String? description;
  @override
  final String name;
  @override
  final String slug;
  @override
  final BuiltList<GGetProductsData_products_authors>? authors;
  @override
  final GGetProductsData_products_category? category;

  factory _$GGetProductsData_products(
          [void Function(GGetProductsData_productsBuilder)? updates]) =>
      (new GGetProductsData_productsBuilder()..update(updates)).build();

  _$GGetProductsData_products._(
      {required this.G__typename,
      required this.id,
      required this.price,
      this.images,
      this.discount,
      this.description,
      required this.name,
      required this.slug,
      this.authors,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductsData_products', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductsData_products', 'id');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GGetProductsData_products', 'price');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductsData_products', 'name');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetProductsData_products', 'slug');
  }

  @override
  GGetProductsData_products rebuild(
          void Function(GGetProductsData_productsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsData_productsBuilder toBuilder() =>
      new GGetProductsData_productsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData_products &&
        G__typename == other.G__typename &&
        id == other.id &&
        price == other.price &&
        images == other.images &&
        discount == other.discount &&
        description == other.description &&
        name == other.name &&
        slug == other.slug &&
        authors == other.authors &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        id.hashCode),
                                    price.hashCode),
                                images.hashCode),
                            discount.hashCode),
                        description.hashCode),
                    name.hashCode),
                slug.hashCode),
            authors.hashCode),
        category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsData_products')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('price', price)
          ..add('images', images)
          ..add('discount', discount)
          ..add('description', description)
          ..add('name', name)
          ..add('slug', slug)
          ..add('authors', authors)
          ..add('category', category))
        .toString();
  }
}

class GGetProductsData_productsBuilder
    implements
        Builder<GGetProductsData_products, GGetProductsData_productsBuilder> {
  _$GGetProductsData_products? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<GGetProductsData_products_images>? _images;
  ListBuilder<GGetProductsData_products_images> get images =>
      _$this._images ??= new ListBuilder<GGetProductsData_products_images>();
  set images(ListBuilder<GGetProductsData_products_images>? images) =>
      _$this._images = images;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  ListBuilder<GGetProductsData_products_authors>? _authors;
  ListBuilder<GGetProductsData_products_authors> get authors =>
      _$this._authors ??= new ListBuilder<GGetProductsData_products_authors>();
  set authors(ListBuilder<GGetProductsData_products_authors>? authors) =>
      _$this._authors = authors;

  GGetProductsData_products_categoryBuilder? _category;
  GGetProductsData_products_categoryBuilder get category =>
      _$this._category ??= new GGetProductsData_products_categoryBuilder();
  set category(GGetProductsData_products_categoryBuilder? category) =>
      _$this._category = category;

  GGetProductsData_productsBuilder() {
    GGetProductsData_products._initializeBuilder(this);
  }

  GGetProductsData_productsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _price = $v.price;
      _images = $v.images?.toBuilder();
      _discount = $v.discount;
      _description = $v.description;
      _name = $v.name;
      _slug = $v.slug;
      _authors = $v.authors?.toBuilder();
      _category = $v.category?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData_products other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData_products;
  }

  @override
  void update(void Function(GGetProductsData_productsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData_products build() {
    _$GGetProductsData_products _$result;
    try {
      _$result = _$v ??
          new _$GGetProductsData_products._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetProductsData_products', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductsData_products', 'id'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GGetProductsData_products', 'price'),
              images: _images?.build(),
              discount: discount,
              description: description,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductsData_products', 'name'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetProductsData_products', 'slug'),
              authors: _authors?.build(),
              category: _category?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductsData_products', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductsData_products_images
    extends GGetProductsData_products_images {
  @override
  final String G__typename;
  @override
  final String public_id;
  @override
  final String secure_url;

  factory _$GGetProductsData_products_images(
          [void Function(GGetProductsData_products_imagesBuilder)? updates]) =>
      (new GGetProductsData_products_imagesBuilder()..update(updates)).build();

  _$GGetProductsData_products_images._(
      {required this.G__typename,
      required this.public_id,
      required this.secure_url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductsData_products_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        public_id, 'GGetProductsData_products_images', 'public_id');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GGetProductsData_products_images', 'secure_url');
  }

  @override
  GGetProductsData_products_images rebuild(
          void Function(GGetProductsData_products_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsData_products_imagesBuilder toBuilder() =>
      new GGetProductsData_products_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData_products_images &&
        G__typename == other.G__typename &&
        public_id == other.public_id &&
        secure_url == other.secure_url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), public_id.hashCode),
        secure_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsData_products_images')
          ..add('G__typename', G__typename)
          ..add('public_id', public_id)
          ..add('secure_url', secure_url))
        .toString();
  }
}

class GGetProductsData_products_imagesBuilder
    implements
        Builder<GGetProductsData_products_images,
            GGetProductsData_products_imagesBuilder> {
  _$GGetProductsData_products_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _public_id;
  String? get public_id => _$this._public_id;
  set public_id(String? public_id) => _$this._public_id = public_id;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  GGetProductsData_products_imagesBuilder() {
    GGetProductsData_products_images._initializeBuilder(this);
  }

  GGetProductsData_products_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _public_id = $v.public_id;
      _secure_url = $v.secure_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData_products_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData_products_images;
  }

  @override
  void update(void Function(GGetProductsData_products_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData_products_images build() {
    final _$result = _$v ??
        new _$GGetProductsData_products_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetProductsData_products_images', 'G__typename'),
            public_id: BuiltValueNullFieldError.checkNotNull(
                public_id, 'GGetProductsData_products_images', 'public_id'),
            secure_url: BuiltValueNullFieldError.checkNotNull(
                secure_url, 'GGetProductsData_products_images', 'secure_url'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductsData_products_authors
    extends GGetProductsData_products_authors {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductsData_products_authors(
          [void Function(GGetProductsData_products_authorsBuilder)? updates]) =>
      (new GGetProductsData_products_authorsBuilder()..update(updates)).build();

  _$GGetProductsData_products_authors._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductsData_products_authors', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductsData_products_authors', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductsData_products_authors', 'name');
  }

  @override
  GGetProductsData_products_authors rebuild(
          void Function(GGetProductsData_products_authorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsData_products_authorsBuilder toBuilder() =>
      new GGetProductsData_products_authorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData_products_authors &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsData_products_authors')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductsData_products_authorsBuilder
    implements
        Builder<GGetProductsData_products_authors,
            GGetProductsData_products_authorsBuilder> {
  _$GGetProductsData_products_authors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductsData_products_authorsBuilder() {
    GGetProductsData_products_authors._initializeBuilder(this);
  }

  GGetProductsData_products_authorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData_products_authors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData_products_authors;
  }

  @override
  void update(
      void Function(GGetProductsData_products_authorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData_products_authors build() {
    final _$result = _$v ??
        new _$GGetProductsData_products_authors._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetProductsData_products_authors', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductsData_products_authors', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetProductsData_products_authors', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductsData_products_category
    extends GGetProductsData_products_category {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GGetProductsData_products_category_parent? parent;

  factory _$GGetProductsData_products_category(
          [void Function(GGetProductsData_products_categoryBuilder)?
              updates]) =>
      (new GGetProductsData_products_categoryBuilder()..update(updates))
          .build();

  _$GGetProductsData_products_category._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductsData_products_category', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductsData_products_category', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductsData_products_category', 'name');
  }

  @override
  GGetProductsData_products_category rebuild(
          void Function(GGetProductsData_products_categoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsData_products_categoryBuilder toBuilder() =>
      new GGetProductsData_products_categoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData_products_category &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        parent == other.parent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        parent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsData_products_category')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class GGetProductsData_products_categoryBuilder
    implements
        Builder<GGetProductsData_products_category,
            GGetProductsData_products_categoryBuilder> {
  _$GGetProductsData_products_category? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductsData_products_category_parentBuilder? _parent;
  GGetProductsData_products_category_parentBuilder get parent =>
      _$this._parent ??= new GGetProductsData_products_category_parentBuilder();
  set parent(GGetProductsData_products_category_parentBuilder? parent) =>
      _$this._parent = parent;

  GGetProductsData_products_categoryBuilder() {
    GGetProductsData_products_category._initializeBuilder(this);
  }

  GGetProductsData_products_categoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _parent = $v.parent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData_products_category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData_products_category;
  }

  @override
  void update(
      void Function(GGetProductsData_products_categoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData_products_category build() {
    _$GGetProductsData_products_category _$result;
    try {
      _$result = _$v ??
          new _$GGetProductsData_products_category._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductsData_products_category', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductsData_products_category', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductsData_products_category', 'name'),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductsData_products_category', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductsData_products_category_parent
    extends GGetProductsData_products_category_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GGetProductsData_products_category_parent_parent? parent;

  factory _$GGetProductsData_products_category_parent(
          [void Function(GGetProductsData_products_category_parentBuilder)?
              updates]) =>
      (new GGetProductsData_products_category_parentBuilder()..update(updates))
          .build();

  _$GGetProductsData_products_category_parent._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductsData_products_category_parent', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductsData_products_category_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductsData_products_category_parent', 'name');
  }

  @override
  GGetProductsData_products_category_parent rebuild(
          void Function(GGetProductsData_products_category_parentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsData_products_category_parentBuilder toBuilder() =>
      new GGetProductsData_products_category_parentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData_products_category_parent &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        parent == other.parent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        parent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductsData_products_category_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class GGetProductsData_products_category_parentBuilder
    implements
        Builder<GGetProductsData_products_category_parent,
            GGetProductsData_products_category_parentBuilder> {
  _$GGetProductsData_products_category_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductsData_products_category_parent_parentBuilder? _parent;
  GGetProductsData_products_category_parent_parentBuilder get parent =>
      _$this._parent ??=
          new GGetProductsData_products_category_parent_parentBuilder();
  set parent(GGetProductsData_products_category_parent_parentBuilder? parent) =>
      _$this._parent = parent;

  GGetProductsData_products_category_parentBuilder() {
    GGetProductsData_products_category_parent._initializeBuilder(this);
  }

  GGetProductsData_products_category_parentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _parent = $v.parent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData_products_category_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData_products_category_parent;
  }

  @override
  void update(
      void Function(GGetProductsData_products_category_parentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData_products_category_parent build() {
    _$GGetProductsData_products_category_parent _$result;
    try {
      _$result = _$v ??
          new _$GGetProductsData_products_category_parent._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductsData_products_category_parent', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductsData_products_category_parent', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductsData_products_category_parent', 'name'),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductsData_products_category_parent',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductsData_products_category_parent_parent
    extends GGetProductsData_products_category_parent_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductsData_products_category_parent_parent(
          [void Function(
                  GGetProductsData_products_category_parent_parentBuilder)?
              updates]) =>
      (new GGetProductsData_products_category_parent_parentBuilder()
            ..update(updates))
          .build();

  _$GGetProductsData_products_category_parent_parent._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductsData_products_category_parent_parent', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductsData_products_category_parent_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductsData_products_category_parent_parent', 'name');
  }

  @override
  GGetProductsData_products_category_parent_parent rebuild(
          void Function(GGetProductsData_products_category_parent_parentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsData_products_category_parent_parentBuilder toBuilder() =>
      new GGetProductsData_products_category_parent_parentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsData_products_category_parent_parent &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductsData_products_category_parent_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductsData_products_category_parent_parentBuilder
    implements
        Builder<GGetProductsData_products_category_parent_parent,
            GGetProductsData_products_category_parent_parentBuilder> {
  _$GGetProductsData_products_category_parent_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductsData_products_category_parent_parentBuilder() {
    GGetProductsData_products_category_parent_parent._initializeBuilder(this);
  }

  GGetProductsData_products_category_parent_parentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsData_products_category_parent_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsData_products_category_parent_parent;
  }

  @override
  void update(
      void Function(GGetProductsData_products_category_parent_parentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsData_products_category_parent_parent build() {
    final _$result = _$v ??
        new _$GGetProductsData_products_category_parent_parent._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductsData_products_category_parent_parent',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductsData_products_category_parent_parent', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GGetProductsData_products_category_parent_parent', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
