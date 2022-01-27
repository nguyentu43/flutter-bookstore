// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getRecommendProducts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRecommentProductsData> _$gGetRecommentProductsDataSerializer =
    new _$GGetRecommentProductsDataSerializer();
Serializer<GGetRecommentProductsData_products>
    _$gGetRecommentProductsDataProductsSerializer =
    new _$GGetRecommentProductsData_productsSerializer();
Serializer<GGetRecommentProductsData_products_images>
    _$gGetRecommentProductsDataProductsImagesSerializer =
    new _$GGetRecommentProductsData_products_imagesSerializer();
Serializer<GGetRecommentProductsData_products_authors>
    _$gGetRecommentProductsDataProductsAuthorsSerializer =
    new _$GGetRecommentProductsData_products_authorsSerializer();
Serializer<GGetRecommentProductsData_products_category>
    _$gGetRecommentProductsDataProductsCategorySerializer =
    new _$GGetRecommentProductsData_products_categorySerializer();
Serializer<GGetRecommentProductsData_products_category_parent>
    _$gGetRecommentProductsDataProductsCategoryParentSerializer =
    new _$GGetRecommentProductsData_products_category_parentSerializer();
Serializer<GGetRecommentProductsData_products_category_parent_parent>
    _$gGetRecommentProductsDataProductsCategoryParentParentSerializer =
    new _$GGetRecommentProductsData_products_category_parent_parentSerializer();

class _$GGetRecommentProductsDataSerializer
    implements StructuredSerializer<GGetRecommentProductsData> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData,
    _$GGetRecommentProductsData
  ];
  @override
  final String wireName = 'GGetRecommentProductsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRecommentProductsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'products',
      serializers.serialize(object.products,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetRecommentProductsData_products)])),
    ];

    return result;
  }

  @override
  GGetRecommentProductsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRecommentProductsDataBuilder();

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
                const FullType(GGetRecommentProductsData_products)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRecommentProductsData_productsSerializer
    implements StructuredSerializer<GGetRecommentProductsData_products> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData_products,
    _$GGetRecommentProductsData_products
  ];
  @override
  final String wireName = 'GGetRecommentProductsData_products';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRecommentProductsData_products object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetRecommentProductsData_products_images)
            ])));
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetRecommentProductsData_products_authors)
            ])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetRecommentProductsData_products_category)));
    }
    return result;
  }

  @override
  GGetRecommentProductsData_products deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRecommentProductsData_productsBuilder();

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
                const FullType(GGetRecommentProductsData_products_images)
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
                const FullType(GGetRecommentProductsData_products_authors)
              ]))! as BuiltList<Object?>);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetRecommentProductsData_products_category))!
              as GGetRecommentProductsData_products_category);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRecommentProductsData_products_imagesSerializer
    implements StructuredSerializer<GGetRecommentProductsData_products_images> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData_products_images,
    _$GGetRecommentProductsData_products_images
  ];
  @override
  final String wireName = 'GGetRecommentProductsData_products_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRecommentProductsData_products_images object,
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
  GGetRecommentProductsData_products_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRecommentProductsData_products_imagesBuilder();

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

class _$GGetRecommentProductsData_products_authorsSerializer
    implements
        StructuredSerializer<GGetRecommentProductsData_products_authors> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData_products_authors,
    _$GGetRecommentProductsData_products_authors
  ];
  @override
  final String wireName = 'GGetRecommentProductsData_products_authors';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRecommentProductsData_products_authors object,
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
  GGetRecommentProductsData_products_authors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRecommentProductsData_products_authorsBuilder();

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

class _$GGetRecommentProductsData_products_categorySerializer
    implements
        StructuredSerializer<GGetRecommentProductsData_products_category> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData_products_category,
    _$GGetRecommentProductsData_products_category
  ];
  @override
  final String wireName = 'GGetRecommentProductsData_products_category';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRecommentProductsData_products_category object,
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
                GGetRecommentProductsData_products_category_parent)));
    }
    return result;
  }

  @override
  GGetRecommentProductsData_products_category deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRecommentProductsData_products_categoryBuilder();

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
                      GGetRecommentProductsData_products_category_parent))!
              as GGetRecommentProductsData_products_category_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRecommentProductsData_products_category_parentSerializer
    implements
        StructuredSerializer<
            GGetRecommentProductsData_products_category_parent> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData_products_category_parent,
    _$GGetRecommentProductsData_products_category_parent
  ];
  @override
  final String wireName = 'GGetRecommentProductsData_products_category_parent';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRecommentProductsData_products_category_parent object,
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
                GGetRecommentProductsData_products_category_parent_parent)));
    }
    return result;
  }

  @override
  GGetRecommentProductsData_products_category_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetRecommentProductsData_products_category_parentBuilder();

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
                      GGetRecommentProductsData_products_category_parent_parent))!
              as GGetRecommentProductsData_products_category_parent_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRecommentProductsData_products_category_parent_parentSerializer
    implements
        StructuredSerializer<
            GGetRecommentProductsData_products_category_parent_parent> {
  @override
  final Iterable<Type> types = const [
    GGetRecommentProductsData_products_category_parent_parent,
    _$GGetRecommentProductsData_products_category_parent_parent
  ];
  @override
  final String wireName =
      'GGetRecommentProductsData_products_category_parent_parent';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRecommentProductsData_products_category_parent_parent object,
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
  GGetRecommentProductsData_products_category_parent_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetRecommentProductsData_products_category_parent_parentBuilder();

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

class _$GGetRecommentProductsData extends GGetRecommentProductsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetRecommentProductsData_products> products;

  factory _$GGetRecommentProductsData(
          [void Function(GGetRecommentProductsDataBuilder)? updates]) =>
      (new GGetRecommentProductsDataBuilder()..update(updates)).build();

  _$GGetRecommentProductsData._(
      {required this.G__typename, required this.products})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRecommentProductsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        products, 'GGetRecommentProductsData', 'products');
  }

  @override
  GGetRecommentProductsData rebuild(
          void Function(GGetRecommentProductsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsDataBuilder toBuilder() =>
      new GGetRecommentProductsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData &&
        G__typename == other.G__typename &&
        products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRecommentProductsData')
          ..add('G__typename', G__typename)
          ..add('products', products))
        .toString();
  }
}

class GGetRecommentProductsDataBuilder
    implements
        Builder<GGetRecommentProductsData, GGetRecommentProductsDataBuilder> {
  _$GGetRecommentProductsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetRecommentProductsData_products>? _products;
  ListBuilder<GGetRecommentProductsData_products> get products =>
      _$this._products ??=
          new ListBuilder<GGetRecommentProductsData_products>();
  set products(ListBuilder<GGetRecommentProductsData_products>? products) =>
      _$this._products = products;

  GGetRecommentProductsDataBuilder() {
    GGetRecommentProductsData._initializeBuilder(this);
  }

  GGetRecommentProductsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRecommentProductsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData;
  }

  @override
  void update(void Function(GGetRecommentProductsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData build() {
    _$GGetRecommentProductsData _$result;
    try {
      _$result = _$v ??
          new _$GGetRecommentProductsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRecommentProductsData', 'G__typename'),
              products: products.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRecommentProductsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRecommentProductsData_products
    extends GGetRecommentProductsData_products {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final double price;
  @override
  final BuiltList<GGetRecommentProductsData_products_images>? images;
  @override
  final double? discount;
  @override
  final String? description;
  @override
  final String name;
  @override
  final String slug;
  @override
  final BuiltList<GGetRecommentProductsData_products_authors>? authors;
  @override
  final GGetRecommentProductsData_products_category? category;

  factory _$GGetRecommentProductsData_products(
          [void Function(GGetRecommentProductsData_productsBuilder)?
              updates]) =>
      (new GGetRecommentProductsData_productsBuilder()..update(updates))
          .build();

  _$GGetRecommentProductsData_products._(
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
        G__typename, 'GGetRecommentProductsData_products', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRecommentProductsData_products', 'id');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GGetRecommentProductsData_products', 'price');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetRecommentProductsData_products', 'name');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetRecommentProductsData_products', 'slug');
  }

  @override
  GGetRecommentProductsData_products rebuild(
          void Function(GGetRecommentProductsData_productsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsData_productsBuilder toBuilder() =>
      new GGetRecommentProductsData_productsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData_products &&
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
    return (newBuiltValueToStringHelper('GGetRecommentProductsData_products')
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

class GGetRecommentProductsData_productsBuilder
    implements
        Builder<GGetRecommentProductsData_products,
            GGetRecommentProductsData_productsBuilder> {
  _$GGetRecommentProductsData_products? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<GGetRecommentProductsData_products_images>? _images;
  ListBuilder<GGetRecommentProductsData_products_images> get images =>
      _$this._images ??=
          new ListBuilder<GGetRecommentProductsData_products_images>();
  set images(ListBuilder<GGetRecommentProductsData_products_images>? images) =>
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

  ListBuilder<GGetRecommentProductsData_products_authors>? _authors;
  ListBuilder<GGetRecommentProductsData_products_authors> get authors =>
      _$this._authors ??=
          new ListBuilder<GGetRecommentProductsData_products_authors>();
  set authors(
          ListBuilder<GGetRecommentProductsData_products_authors>? authors) =>
      _$this._authors = authors;

  GGetRecommentProductsData_products_categoryBuilder? _category;
  GGetRecommentProductsData_products_categoryBuilder get category =>
      _$this._category ??=
          new GGetRecommentProductsData_products_categoryBuilder();
  set category(GGetRecommentProductsData_products_categoryBuilder? category) =>
      _$this._category = category;

  GGetRecommentProductsData_productsBuilder() {
    GGetRecommentProductsData_products._initializeBuilder(this);
  }

  GGetRecommentProductsData_productsBuilder get _$this {
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
  void replace(GGetRecommentProductsData_products other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData_products;
  }

  @override
  void update(
      void Function(GGetRecommentProductsData_productsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData_products build() {
    _$GGetRecommentProductsData_products _$result;
    try {
      _$result = _$v ??
          new _$GGetRecommentProductsData_products._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetRecommentProductsData_products', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetRecommentProductsData_products', 'id'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GGetRecommentProductsData_products', 'price'),
              images: _images?.build(),
              discount: discount,
              description: description,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetRecommentProductsData_products', 'name'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetRecommentProductsData_products', 'slug'),
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
            'GGetRecommentProductsData_products', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRecommentProductsData_products_images
    extends GGetRecommentProductsData_products_images {
  @override
  final String G__typename;
  @override
  final String public_id;
  @override
  final String secure_url;

  factory _$GGetRecommentProductsData_products_images(
          [void Function(GGetRecommentProductsData_products_imagesBuilder)?
              updates]) =>
      (new GGetRecommentProductsData_products_imagesBuilder()..update(updates))
          .build();

  _$GGetRecommentProductsData_products_images._(
      {required this.G__typename,
      required this.public_id,
      required this.secure_url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetRecommentProductsData_products_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        public_id, 'GGetRecommentProductsData_products_images', 'public_id');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GGetRecommentProductsData_products_images', 'secure_url');
  }

  @override
  GGetRecommentProductsData_products_images rebuild(
          void Function(GGetRecommentProductsData_products_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsData_products_imagesBuilder toBuilder() =>
      new GGetRecommentProductsData_products_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData_products_images &&
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
    return (newBuiltValueToStringHelper(
            'GGetRecommentProductsData_products_images')
          ..add('G__typename', G__typename)
          ..add('public_id', public_id)
          ..add('secure_url', secure_url))
        .toString();
  }
}

class GGetRecommentProductsData_products_imagesBuilder
    implements
        Builder<GGetRecommentProductsData_products_images,
            GGetRecommentProductsData_products_imagesBuilder> {
  _$GGetRecommentProductsData_products_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _public_id;
  String? get public_id => _$this._public_id;
  set public_id(String? public_id) => _$this._public_id = public_id;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  GGetRecommentProductsData_products_imagesBuilder() {
    GGetRecommentProductsData_products_images._initializeBuilder(this);
  }

  GGetRecommentProductsData_products_imagesBuilder get _$this {
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
  void replace(GGetRecommentProductsData_products_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData_products_images;
  }

  @override
  void update(
      void Function(GGetRecommentProductsData_products_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData_products_images build() {
    final _$result = _$v ??
        new _$GGetRecommentProductsData_products_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetRecommentProductsData_products_images', 'G__typename'),
            public_id: BuiltValueNullFieldError.checkNotNull(public_id,
                'GGetRecommentProductsData_products_images', 'public_id'),
            secure_url: BuiltValueNullFieldError.checkNotNull(secure_url,
                'GGetRecommentProductsData_products_images', 'secure_url'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetRecommentProductsData_products_authors
    extends GGetRecommentProductsData_products_authors {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetRecommentProductsData_products_authors(
          [void Function(GGetRecommentProductsData_products_authorsBuilder)?
              updates]) =>
      (new GGetRecommentProductsData_products_authorsBuilder()..update(updates))
          .build();

  _$GGetRecommentProductsData_products_authors._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetRecommentProductsData_products_authors', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRecommentProductsData_products_authors', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetRecommentProductsData_products_authors', 'name');
  }

  @override
  GGetRecommentProductsData_products_authors rebuild(
          void Function(GGetRecommentProductsData_products_authorsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsData_products_authorsBuilder toBuilder() =>
      new GGetRecommentProductsData_products_authorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData_products_authors &&
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
            'GGetRecommentProductsData_products_authors')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetRecommentProductsData_products_authorsBuilder
    implements
        Builder<GGetRecommentProductsData_products_authors,
            GGetRecommentProductsData_products_authorsBuilder> {
  _$GGetRecommentProductsData_products_authors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRecommentProductsData_products_authorsBuilder() {
    GGetRecommentProductsData_products_authors._initializeBuilder(this);
  }

  GGetRecommentProductsData_products_authorsBuilder get _$this {
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
  void replace(GGetRecommentProductsData_products_authors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData_products_authors;
  }

  @override
  void update(
      void Function(GGetRecommentProductsData_products_authorsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData_products_authors build() {
    final _$result = _$v ??
        new _$GGetRecommentProductsData_products_authors._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetRecommentProductsData_products_authors', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetRecommentProductsData_products_authors', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetRecommentProductsData_products_authors', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetRecommentProductsData_products_category
    extends GGetRecommentProductsData_products_category {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GGetRecommentProductsData_products_category_parent? parent;

  factory _$GGetRecommentProductsData_products_category(
          [void Function(GGetRecommentProductsData_products_categoryBuilder)?
              updates]) =>
      (new GGetRecommentProductsData_products_categoryBuilder()
            ..update(updates))
          .build();

  _$GGetRecommentProductsData_products_category._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetRecommentProductsData_products_category', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRecommentProductsData_products_category', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetRecommentProductsData_products_category', 'name');
  }

  @override
  GGetRecommentProductsData_products_category rebuild(
          void Function(GGetRecommentProductsData_products_categoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsData_products_categoryBuilder toBuilder() =>
      new GGetRecommentProductsData_products_categoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData_products_category &&
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
            'GGetRecommentProductsData_products_category')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class GGetRecommentProductsData_products_categoryBuilder
    implements
        Builder<GGetRecommentProductsData_products_category,
            GGetRecommentProductsData_products_categoryBuilder> {
  _$GGetRecommentProductsData_products_category? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRecommentProductsData_products_category_parentBuilder? _parent;
  GGetRecommentProductsData_products_category_parentBuilder get parent =>
      _$this._parent ??=
          new GGetRecommentProductsData_products_category_parentBuilder();
  set parent(
          GGetRecommentProductsData_products_category_parentBuilder? parent) =>
      _$this._parent = parent;

  GGetRecommentProductsData_products_categoryBuilder() {
    GGetRecommentProductsData_products_category._initializeBuilder(this);
  }

  GGetRecommentProductsData_products_categoryBuilder get _$this {
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
  void replace(GGetRecommentProductsData_products_category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData_products_category;
  }

  @override
  void update(
      void Function(GGetRecommentProductsData_products_categoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData_products_category build() {
    _$GGetRecommentProductsData_products_category _$result;
    try {
      _$result = _$v ??
          new _$GGetRecommentProductsData_products_category._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetRecommentProductsData_products_category', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetRecommentProductsData_products_category', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetRecommentProductsData_products_category', 'name'),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRecommentProductsData_products_category',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRecommentProductsData_products_category_parent
    extends GGetRecommentProductsData_products_category_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GGetRecommentProductsData_products_category_parent_parent? parent;

  factory _$GGetRecommentProductsData_products_category_parent(
          [void Function(
                  GGetRecommentProductsData_products_category_parentBuilder)?
              updates]) =>
      (new GGetRecommentProductsData_products_category_parentBuilder()
            ..update(updates))
          .build();

  _$GGetRecommentProductsData_products_category_parent._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetRecommentProductsData_products_category_parent', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRecommentProductsData_products_category_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetRecommentProductsData_products_category_parent', 'name');
  }

  @override
  GGetRecommentProductsData_products_category_parent rebuild(
          void Function(
                  GGetRecommentProductsData_products_category_parentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsData_products_category_parentBuilder toBuilder() =>
      new GGetRecommentProductsData_products_category_parentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData_products_category_parent &&
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
            'GGetRecommentProductsData_products_category_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class GGetRecommentProductsData_products_category_parentBuilder
    implements
        Builder<GGetRecommentProductsData_products_category_parent,
            GGetRecommentProductsData_products_category_parentBuilder> {
  _$GGetRecommentProductsData_products_category_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRecommentProductsData_products_category_parent_parentBuilder? _parent;
  GGetRecommentProductsData_products_category_parent_parentBuilder get parent =>
      _$this._parent ??=
          new GGetRecommentProductsData_products_category_parent_parentBuilder();
  set parent(
          GGetRecommentProductsData_products_category_parent_parentBuilder?
              parent) =>
      _$this._parent = parent;

  GGetRecommentProductsData_products_category_parentBuilder() {
    GGetRecommentProductsData_products_category_parent._initializeBuilder(this);
  }

  GGetRecommentProductsData_products_category_parentBuilder get _$this {
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
  void replace(GGetRecommentProductsData_products_category_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData_products_category_parent;
  }

  @override
  void update(
      void Function(GGetRecommentProductsData_products_category_parentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData_products_category_parent build() {
    _$GGetRecommentProductsData_products_category_parent _$result;
    try {
      _$result = _$v ??
          new _$GGetRecommentProductsData_products_category_parent._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GGetRecommentProductsData_products_category_parent',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  'GGetRecommentProductsData_products_category_parent', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  'GGetRecommentProductsData_products_category_parent', 'name'),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRecommentProductsData_products_category_parent',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRecommentProductsData_products_category_parent_parent
    extends GGetRecommentProductsData_products_category_parent_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetRecommentProductsData_products_category_parent_parent(
          [void Function(
                  GGetRecommentProductsData_products_category_parent_parentBuilder)?
              updates]) =>
      (new GGetRecommentProductsData_products_category_parent_parentBuilder()
            ..update(updates))
          .build();

  _$GGetRecommentProductsData_products_category_parent_parent._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetRecommentProductsData_products_category_parent_parent',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRecommentProductsData_products_category_parent_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        'GGetRecommentProductsData_products_category_parent_parent', 'name');
  }

  @override
  GGetRecommentProductsData_products_category_parent_parent rebuild(
          void Function(
                  GGetRecommentProductsData_products_category_parent_parentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommentProductsData_products_category_parent_parentBuilder
      toBuilder() =>
          new GGetRecommentProductsData_products_category_parent_parentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommentProductsData_products_category_parent_parent &&
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
            'GGetRecommentProductsData_products_category_parent_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetRecommentProductsData_products_category_parent_parentBuilder
    implements
        Builder<GGetRecommentProductsData_products_category_parent_parent,
            GGetRecommentProductsData_products_category_parent_parentBuilder> {
  _$GGetRecommentProductsData_products_category_parent_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRecommentProductsData_products_category_parent_parentBuilder() {
    GGetRecommentProductsData_products_category_parent_parent
        ._initializeBuilder(this);
  }

  GGetRecommentProductsData_products_category_parent_parentBuilder get _$this {
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
  void replace(
      GGetRecommentProductsData_products_category_parent_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommentProductsData_products_category_parent_parent;
  }

  @override
  void update(
      void Function(
              GGetRecommentProductsData_products_category_parent_parentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommentProductsData_products_category_parent_parent build() {
    final _$result = _$v ??
        new _$GGetRecommentProductsData_products_category_parent_parent._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetRecommentProductsData_products_category_parent_parent',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GGetRecommentProductsData_products_category_parent_parent',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GGetRecommentProductsData_products_category_parent_parent',
                'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
