// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getProduct.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProductData> _$gGetProductDataSerializer =
    new _$GGetProductDataSerializer();
Serializer<GGetProductData_product> _$gGetProductDataProductSerializer =
    new _$GGetProductData_productSerializer();
Serializer<GGetProductData_product_ratings>
    _$gGetProductDataProductRatingsSerializer =
    new _$GGetProductData_product_ratingsSerializer();
Serializer<GGetProductData_product_ratings_user>
    _$gGetProductDataProductRatingsUserSerializer =
    new _$GGetProductData_product_ratings_userSerializer();
Serializer<GGetProductData_product_images>
    _$gGetProductDataProductImagesSerializer =
    new _$GGetProductData_product_imagesSerializer();
Serializer<GGetProductData_product_authors>
    _$gGetProductDataProductAuthorsSerializer =
    new _$GGetProductData_product_authorsSerializer();
Serializer<GGetProductData_product_category>
    _$gGetProductDataProductCategorySerializer =
    new _$GGetProductData_product_categorySerializer();
Serializer<GGetProductData_product_category_parent>
    _$gGetProductDataProductCategoryParentSerializer =
    new _$GGetProductData_product_category_parentSerializer();
Serializer<GGetProductData_product_category_parent_parent>
    _$gGetProductDataProductCategoryParentParentSerializer =
    new _$GGetProductData_product_category_parent_parentSerializer();

class _$GGetProductDataSerializer
    implements StructuredSerializer<GGetProductData> {
  @override
  final Iterable<Type> types = const [GGetProductData, _$GGetProductData];
  @override
  final String wireName = 'GGetProductData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProductData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.product;
    if (value != null) {
      result
        ..add('product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetProductData_product)));
    }
    return result;
  }

  @override
  GGetProductData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductDataBuilder();

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
        case 'product':
          result.product.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetProductData_product))!
              as GGetProductData_product);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_productSerializer
    implements StructuredSerializer<GGetProductData_product> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product,
    _$GGetProductData_product
  ];
  @override
  final String wireName = 'GGetProductData_product';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product object,
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
    value = object.ratings;
    if (value != null) {
      result
        ..add('ratings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetProductData_product_ratings)])));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetProductData_product_images)])));
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
                const [const FullType(GGetProductData_product_authors)])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetProductData_product_category)));
    }
    return result;
  }

  @override
  GGetProductData_product deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_productBuilder();

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
        case 'ratings':
          result.ratings.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_product_ratings)
              ]))! as BuiltList<Object?>);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_product_images)
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
                const FullType(GGetProductData_product_authors)
              ]))! as BuiltList<Object?>);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetProductData_product_category))!
              as GGetProductData_product_category);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_product_ratingsSerializer
    implements StructuredSerializer<GGetProductData_product_ratings> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_ratings,
    _$GGetProductData_product_ratings
  ];
  @override
  final String wireName = 'GGetProductData_product_ratings';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product_ratings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(GGetProductData_product_ratings_user)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductData_product_ratings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_ratingsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetProductData_product_ratings_user))!
              as GGetProductData_product_ratings_user);
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_product_ratings_userSerializer
    implements StructuredSerializer<GGetProductData_product_ratings_user> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_ratings_user,
    _$GGetProductData_product_ratings_user
  ];
  @override
  final String wireName = 'GGetProductData_product_ratings_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product_ratings_user object,
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
  GGetProductData_product_ratings_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_ratings_userBuilder();

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

class _$GGetProductData_product_imagesSerializer
    implements StructuredSerializer<GGetProductData_product_images> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_images,
    _$GGetProductData_product_images
  ];
  @override
  final String wireName = 'GGetProductData_product_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product_images object,
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
  GGetProductData_product_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_imagesBuilder();

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

class _$GGetProductData_product_authorsSerializer
    implements StructuredSerializer<GGetProductData_product_authors> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_authors,
    _$GGetProductData_product_authors
  ];
  @override
  final String wireName = 'GGetProductData_product_authors';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product_authors object,
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
  GGetProductData_product_authors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_authorsBuilder();

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

class _$GGetProductData_product_categorySerializer
    implements StructuredSerializer<GGetProductData_product_category> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_category,
    _$GGetProductData_product_category
  ];
  @override
  final String wireName = 'GGetProductData_product_category';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product_category object,
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
                const FullType(GGetProductData_product_category_parent)));
    }
    return result;
  }

  @override
  GGetProductData_product_category deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_categoryBuilder();

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
                  specifiedType:
                      const FullType(GGetProductData_product_category_parent))!
              as GGetProductData_product_category_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_product_category_parentSerializer
    implements StructuredSerializer<GGetProductData_product_category_parent> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_category_parent,
    _$GGetProductData_product_category_parent
  ];
  @override
  final String wireName = 'GGetProductData_product_category_parent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_product_category_parent object,
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
                GGetProductData_product_category_parent_parent)));
    }
    return result;
  }

  @override
  GGetProductData_product_category_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_category_parentBuilder();

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
                      GGetProductData_product_category_parent_parent))!
              as GGetProductData_product_category_parent_parent);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_product_category_parent_parentSerializer
    implements
        StructuredSerializer<GGetProductData_product_category_parent_parent> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_product_category_parent_parent,
    _$GGetProductData_product_category_parent_parent
  ];
  @override
  final String wireName = 'GGetProductData_product_category_parent_parent';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductData_product_category_parent_parent object,
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
  GGetProductData_product_category_parent_parent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_product_category_parent_parentBuilder();

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

class _$GGetProductData extends GGetProductData {
  @override
  final String G__typename;
  @override
  final GGetProductData_product? product;

  factory _$GGetProductData([void Function(GGetProductDataBuilder)? updates]) =>
      (new GGetProductDataBuilder()..update(updates)).build();

  _$GGetProductData._({required this.G__typename, this.product}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData', 'G__typename');
  }

  @override
  GGetProductData rebuild(void Function(GGetProductDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductDataBuilder toBuilder() =>
      new GGetProductDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData &&
        G__typename == other.G__typename &&
        product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData')
          ..add('G__typename', G__typename)
          ..add('product', product))
        .toString();
  }
}

class GGetProductDataBuilder
    implements Builder<GGetProductData, GGetProductDataBuilder> {
  _$GGetProductData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetProductData_productBuilder? _product;
  GGetProductData_productBuilder get product =>
      _$this._product ??= new GGetProductData_productBuilder();
  set product(GGetProductData_productBuilder? product) =>
      _$this._product = product;

  GGetProductDataBuilder() {
    GGetProductData._initializeBuilder(this);
  }

  GGetProductDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _product = $v.product?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData;
  }

  @override
  void update(void Function(GGetProductDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData build() {
    _$GGetProductData _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetProductData', 'G__typename'),
              product: _product?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product extends GGetProductData_product {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final double price;
  @override
  final BuiltList<GGetProductData_product_ratings>? ratings;
  @override
  final BuiltList<GGetProductData_product_images>? images;
  @override
  final double? discount;
  @override
  final String? description;
  @override
  final String name;
  @override
  final String slug;
  @override
  final BuiltList<GGetProductData_product_authors>? authors;
  @override
  final GGetProductData_product_category? category;

  factory _$GGetProductData_product(
          [void Function(GGetProductData_productBuilder)? updates]) =>
      (new GGetProductData_productBuilder()..update(updates)).build();

  _$GGetProductData_product._(
      {required this.G__typename,
      required this.id,
      required this.price,
      this.ratings,
      this.images,
      this.discount,
      this.description,
      required this.name,
      required this.slug,
      this.authors,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GGetProductData_product', 'id');
    BuiltValueNullFieldError.checkNotNull(
        price, 'GGetProductData_product', 'price');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_product', 'name');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetProductData_product', 'slug');
  }

  @override
  GGetProductData_product rebuild(
          void Function(GGetProductData_productBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_productBuilder toBuilder() =>
      new GGetProductData_productBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product &&
        G__typename == other.G__typename &&
        id == other.id &&
        price == other.price &&
        ratings == other.ratings &&
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
                                    $jc(
                                        $jc($jc(0, G__typename.hashCode),
                                            id.hashCode),
                                        price.hashCode),
                                    ratings.hashCode),
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
    return (newBuiltValueToStringHelper('GGetProductData_product')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('price', price)
          ..add('ratings', ratings)
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

class GGetProductData_productBuilder
    implements
        Builder<GGetProductData_product, GGetProductData_productBuilder> {
  _$GGetProductData_product? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<GGetProductData_product_ratings>? _ratings;
  ListBuilder<GGetProductData_product_ratings> get ratings =>
      _$this._ratings ??= new ListBuilder<GGetProductData_product_ratings>();
  set ratings(ListBuilder<GGetProductData_product_ratings>? ratings) =>
      _$this._ratings = ratings;

  ListBuilder<GGetProductData_product_images>? _images;
  ListBuilder<GGetProductData_product_images> get images =>
      _$this._images ??= new ListBuilder<GGetProductData_product_images>();
  set images(ListBuilder<GGetProductData_product_images>? images) =>
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

  ListBuilder<GGetProductData_product_authors>? _authors;
  ListBuilder<GGetProductData_product_authors> get authors =>
      _$this._authors ??= new ListBuilder<GGetProductData_product_authors>();
  set authors(ListBuilder<GGetProductData_product_authors>? authors) =>
      _$this._authors = authors;

  GGetProductData_product_categoryBuilder? _category;
  GGetProductData_product_categoryBuilder get category =>
      _$this._category ??= new GGetProductData_product_categoryBuilder();
  set category(GGetProductData_product_categoryBuilder? category) =>
      _$this._category = category;

  GGetProductData_productBuilder() {
    GGetProductData_product._initializeBuilder(this);
  }

  GGetProductData_productBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _price = $v.price;
      _ratings = $v.ratings?.toBuilder();
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
  void replace(GGetProductData_product other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product;
  }

  @override
  void update(void Function(GGetProductData_productBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product build() {
    _$GGetProductData_product _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_product._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetProductData_product', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductData_product', 'id'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, 'GGetProductData_product', 'price'),
              ratings: _ratings?.build(),
              images: _images?.build(),
              discount: discount,
              description: description,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductData_product', 'name'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetProductData_product', 'slug'),
              authors: _authors?.build(),
              category: _category?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ratings';
        _ratings?.build();
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_product', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_ratings
    extends GGetProductData_product_ratings {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final GGetProductData_product_ratings_user user;
  @override
  final String comment;
  @override
  final int rate;
  @override
  final String createdAt;

  factory _$GGetProductData_product_ratings(
          [void Function(GGetProductData_product_ratingsBuilder)? updates]) =>
      (new GGetProductData_product_ratingsBuilder()..update(updates)).build();

  _$GGetProductData_product_ratings._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.user,
      required this.comment,
      required this.rate,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product_ratings', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_product_ratings', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GGetProductData_product_ratings', 'title');
    BuiltValueNullFieldError.checkNotNull(
        user, 'GGetProductData_product_ratings', 'user');
    BuiltValueNullFieldError.checkNotNull(
        comment, 'GGetProductData_product_ratings', 'comment');
    BuiltValueNullFieldError.checkNotNull(
        rate, 'GGetProductData_product_ratings', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GGetProductData_product_ratings', 'createdAt');
  }

  @override
  GGetProductData_product_ratings rebuild(
          void Function(GGetProductData_product_ratingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_ratingsBuilder toBuilder() =>
      new GGetProductData_product_ratingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_ratings &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        user == other.user &&
        comment == other.comment &&
        rate == other.rate &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        title.hashCode),
                    user.hashCode),
                comment.hashCode),
            rate.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData_product_ratings')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('user', user)
          ..add('comment', comment)
          ..add('rate', rate)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GGetProductData_product_ratingsBuilder
    implements
        Builder<GGetProductData_product_ratings,
            GGetProductData_product_ratingsBuilder> {
  _$GGetProductData_product_ratings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GGetProductData_product_ratings_userBuilder? _user;
  GGetProductData_product_ratings_userBuilder get user =>
      _$this._user ??= new GGetProductData_product_ratings_userBuilder();
  set user(GGetProductData_product_ratings_userBuilder? user) =>
      _$this._user = user;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _rate;
  int? get rate => _$this._rate;
  set rate(int? rate) => _$this._rate = rate;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GGetProductData_product_ratingsBuilder() {
    GGetProductData_product_ratings._initializeBuilder(this);
  }

  GGetProductData_product_ratingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _user = $v.user.toBuilder();
      _comment = $v.comment;
      _rate = $v.rate;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_product_ratings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_ratings;
  }

  @override
  void update(void Function(GGetProductData_product_ratingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_ratings build() {
    _$GGetProductData_product_ratings _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_product_ratings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductData_product_ratings', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductData_product_ratings', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GGetProductData_product_ratings', 'title'),
              user: user.build(),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment, 'GGetProductData_product_ratings', 'comment'),
              rate: BuiltValueNullFieldError.checkNotNull(
                  rate, 'GGetProductData_product_ratings', 'rate'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'GGetProductData_product_ratings', 'createdAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_product_ratings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_ratings_user
    extends GGetProductData_product_ratings_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductData_product_ratings_user(
          [void Function(GGetProductData_product_ratings_userBuilder)?
              updates]) =>
      (new GGetProductData_product_ratings_userBuilder()..update(updates))
          .build();

  _$GGetProductData_product_ratings_user._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product_ratings_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_product_ratings_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_product_ratings_user', 'name');
  }

  @override
  GGetProductData_product_ratings_user rebuild(
          void Function(GGetProductData_product_ratings_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_ratings_userBuilder toBuilder() =>
      new GGetProductData_product_ratings_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_ratings_user &&
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
    return (newBuiltValueToStringHelper('GGetProductData_product_ratings_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductData_product_ratings_userBuilder
    implements
        Builder<GGetProductData_product_ratings_user,
            GGetProductData_product_ratings_userBuilder> {
  _$GGetProductData_product_ratings_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_product_ratings_userBuilder() {
    GGetProductData_product_ratings_user._initializeBuilder(this);
  }

  GGetProductData_product_ratings_userBuilder get _$this {
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
  void replace(GGetProductData_product_ratings_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_ratings_user;
  }

  @override
  void update(
      void Function(GGetProductData_product_ratings_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_ratings_user build() {
    final _$result = _$v ??
        new _$GGetProductData_product_ratings_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetProductData_product_ratings_user', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductData_product_ratings_user', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetProductData_product_ratings_user', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_images extends GGetProductData_product_images {
  @override
  final String G__typename;
  @override
  final String public_id;
  @override
  final String secure_url;

  factory _$GGetProductData_product_images(
          [void Function(GGetProductData_product_imagesBuilder)? updates]) =>
      (new GGetProductData_product_imagesBuilder()..update(updates)).build();

  _$GGetProductData_product_images._(
      {required this.G__typename,
      required this.public_id,
      required this.secure_url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product_images', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        public_id, 'GGetProductData_product_images', 'public_id');
    BuiltValueNullFieldError.checkNotNull(
        secure_url, 'GGetProductData_product_images', 'secure_url');
  }

  @override
  GGetProductData_product_images rebuild(
          void Function(GGetProductData_product_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_imagesBuilder toBuilder() =>
      new GGetProductData_product_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_images &&
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
    return (newBuiltValueToStringHelper('GGetProductData_product_images')
          ..add('G__typename', G__typename)
          ..add('public_id', public_id)
          ..add('secure_url', secure_url))
        .toString();
  }
}

class GGetProductData_product_imagesBuilder
    implements
        Builder<GGetProductData_product_images,
            GGetProductData_product_imagesBuilder> {
  _$GGetProductData_product_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _public_id;
  String? get public_id => _$this._public_id;
  set public_id(String? public_id) => _$this._public_id = public_id;

  String? _secure_url;
  String? get secure_url => _$this._secure_url;
  set secure_url(String? secure_url) => _$this._secure_url = secure_url;

  GGetProductData_product_imagesBuilder() {
    GGetProductData_product_images._initializeBuilder(this);
  }

  GGetProductData_product_imagesBuilder get _$this {
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
  void replace(GGetProductData_product_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_images;
  }

  @override
  void update(void Function(GGetProductData_product_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_images build() {
    final _$result = _$v ??
        new _$GGetProductData_product_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetProductData_product_images', 'G__typename'),
            public_id: BuiltValueNullFieldError.checkNotNull(
                public_id, 'GGetProductData_product_images', 'public_id'),
            secure_url: BuiltValueNullFieldError.checkNotNull(
                secure_url, 'GGetProductData_product_images', 'secure_url'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_authors
    extends GGetProductData_product_authors {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductData_product_authors(
          [void Function(GGetProductData_product_authorsBuilder)? updates]) =>
      (new GGetProductData_product_authorsBuilder()..update(updates)).build();

  _$GGetProductData_product_authors._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product_authors', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_product_authors', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_product_authors', 'name');
  }

  @override
  GGetProductData_product_authors rebuild(
          void Function(GGetProductData_product_authorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_authorsBuilder toBuilder() =>
      new GGetProductData_product_authorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_authors &&
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
    return (newBuiltValueToStringHelper('GGetProductData_product_authors')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductData_product_authorsBuilder
    implements
        Builder<GGetProductData_product_authors,
            GGetProductData_product_authorsBuilder> {
  _$GGetProductData_product_authors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_product_authorsBuilder() {
    GGetProductData_product_authors._initializeBuilder(this);
  }

  GGetProductData_product_authorsBuilder get _$this {
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
  void replace(GGetProductData_product_authors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_authors;
  }

  @override
  void update(void Function(GGetProductData_product_authorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_authors build() {
    final _$result = _$v ??
        new _$GGetProductData_product_authors._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetProductData_product_authors', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductData_product_authors', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetProductData_product_authors', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_category
    extends GGetProductData_product_category {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GGetProductData_product_category_parent? parent;

  factory _$GGetProductData_product_category(
          [void Function(GGetProductData_product_categoryBuilder)? updates]) =>
      (new GGetProductData_product_categoryBuilder()..update(updates)).build();

  _$GGetProductData_product_category._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product_category', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_product_category', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_product_category', 'name');
  }

  @override
  GGetProductData_product_category rebuild(
          void Function(GGetProductData_product_categoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_categoryBuilder toBuilder() =>
      new GGetProductData_product_categoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_category &&
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
    return (newBuiltValueToStringHelper('GGetProductData_product_category')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class GGetProductData_product_categoryBuilder
    implements
        Builder<GGetProductData_product_category,
            GGetProductData_product_categoryBuilder> {
  _$GGetProductData_product_category? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_product_category_parentBuilder? _parent;
  GGetProductData_product_category_parentBuilder get parent =>
      _$this._parent ??= new GGetProductData_product_category_parentBuilder();
  set parent(GGetProductData_product_category_parentBuilder? parent) =>
      _$this._parent = parent;

  GGetProductData_product_categoryBuilder() {
    GGetProductData_product_category._initializeBuilder(this);
  }

  GGetProductData_product_categoryBuilder get _$this {
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
  void replace(GGetProductData_product_category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_category;
  }

  @override
  void update(void Function(GGetProductData_product_categoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_category build() {
    _$GGetProductData_product_category _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_product_category._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductData_product_category', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductData_product_category', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductData_product_category', 'name'),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_product_category', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_category_parent
    extends GGetProductData_product_category_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GGetProductData_product_category_parent_parent? parent;

  factory _$GGetProductData_product_category_parent(
          [void Function(GGetProductData_product_category_parentBuilder)?
              updates]) =>
      (new GGetProductData_product_category_parentBuilder()..update(updates))
          .build();

  _$GGetProductData_product_category_parent._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_product_category_parent', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_product_category_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_product_category_parent', 'name');
  }

  @override
  GGetProductData_product_category_parent rebuild(
          void Function(GGetProductData_product_category_parentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_category_parentBuilder toBuilder() =>
      new GGetProductData_product_category_parentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_category_parent &&
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
            'GGetProductData_product_category_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class GGetProductData_product_category_parentBuilder
    implements
        Builder<GGetProductData_product_category_parent,
            GGetProductData_product_category_parentBuilder> {
  _$GGetProductData_product_category_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_product_category_parent_parentBuilder? _parent;
  GGetProductData_product_category_parent_parentBuilder get parent =>
      _$this._parent ??=
          new GGetProductData_product_category_parent_parentBuilder();
  set parent(GGetProductData_product_category_parent_parentBuilder? parent) =>
      _$this._parent = parent;

  GGetProductData_product_category_parentBuilder() {
    GGetProductData_product_category_parent._initializeBuilder(this);
  }

  GGetProductData_product_category_parentBuilder get _$this {
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
  void replace(GGetProductData_product_category_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_category_parent;
  }

  @override
  void update(
      void Function(GGetProductData_product_category_parentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_category_parent build() {
    _$GGetProductData_product_category_parent _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_product_category_parent._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductData_product_category_parent', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductData_product_category_parent', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductData_product_category_parent', 'name'),
              parent: _parent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_product_category_parent',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_product_category_parent_parent
    extends GGetProductData_product_category_parent_parent {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductData_product_category_parent_parent(
          [void Function(GGetProductData_product_category_parent_parentBuilder)?
              updates]) =>
      (new GGetProductData_product_category_parent_parentBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_product_category_parent_parent._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductData_product_category_parent_parent', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_product_category_parent_parent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_product_category_parent_parent', 'name');
  }

  @override
  GGetProductData_product_category_parent_parent rebuild(
          void Function(GGetProductData_product_category_parent_parentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_product_category_parent_parentBuilder toBuilder() =>
      new GGetProductData_product_category_parent_parentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_product_category_parent_parent &&
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
            'GGetProductData_product_category_parent_parent')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductData_product_category_parent_parentBuilder
    implements
        Builder<GGetProductData_product_category_parent_parent,
            GGetProductData_product_category_parent_parentBuilder> {
  _$GGetProductData_product_category_parent_parent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_product_category_parent_parentBuilder() {
    GGetProductData_product_category_parent_parent._initializeBuilder(this);
  }

  GGetProductData_product_category_parent_parentBuilder get _$this {
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
  void replace(GGetProductData_product_category_parent_parent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_product_category_parent_parent;
  }

  @override
  void update(
      void Function(GGetProductData_product_category_parent_parentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_product_category_parent_parent build() {
    final _$result = _$v ??
        new _$GGetProductData_product_category_parent_parent._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductData_product_category_parent_parent',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductData_product_category_parent_parent', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GGetProductData_product_category_parent_parent', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
