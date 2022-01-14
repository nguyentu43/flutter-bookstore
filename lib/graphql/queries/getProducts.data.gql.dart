// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getProducts.data.gql.g.dart';

abstract class GGetProductsData
    implements Built<GGetProductsData, GGetProductsDataBuilder> {
  GGetProductsData._();

  factory GGetProductsData([Function(GGetProductsDataBuilder b) updates]) =
      _$GGetProductsData;

  static void _initializeBuilder(GGetProductsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetProductsData_products> get products;
  static Serializer<GGetProductsData> get serializer =>
      _$gGetProductsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductsData.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductsData.serializer, json);
}

abstract class GGetProductsData_products
    implements
        Built<GGetProductsData_products, GGetProductsData_productsBuilder> {
  GGetProductsData_products._();

  factory GGetProductsData_products(
          [Function(GGetProductsData_productsBuilder b) updates]) =
      _$GGetProductsData_products;

  static void _initializeBuilder(GGetProductsData_productsBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double get price;
  BuiltList<GGetProductsData_products_images>? get images;
  double? get discount;
  String? get description;
  String get name;
  String get slug;
  BuiltList<GGetProductsData_products_authors>? get authors;
  GGetProductsData_products_category? get category;
  static Serializer<GGetProductsData_products> get serializer =>
      _$gGetProductsDataProductsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductsData_products.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsData_products? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductsData_products.serializer, json);
}

abstract class GGetProductsData_products_images
    implements
        Built<GGetProductsData_products_images,
            GGetProductsData_products_imagesBuilder> {
  GGetProductsData_products_images._();

  factory GGetProductsData_products_images(
          [Function(GGetProductsData_products_imagesBuilder b) updates]) =
      _$GGetProductsData_products_images;

  static void _initializeBuilder(GGetProductsData_products_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get public_id;
  String get secure_url;
  static Serializer<GGetProductsData_products_images> get serializer =>
      _$gGetProductsDataProductsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductsData_products_images.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsData_products_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductsData_products_images.serializer, json);
}

abstract class GGetProductsData_products_authors
    implements
        Built<GGetProductsData_products_authors,
            GGetProductsData_products_authorsBuilder> {
  GGetProductsData_products_authors._();

  factory GGetProductsData_products_authors(
          [Function(GGetProductsData_products_authorsBuilder b) updates]) =
      _$GGetProductsData_products_authors;

  static void _initializeBuilder(GGetProductsData_products_authorsBuilder b) =>
      b..G__typename = 'Author';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductsData_products_authors> get serializer =>
      _$gGetProductsDataProductsAuthorsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductsData_products_authors.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsData_products_authors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductsData_products_authors.serializer, json);
}

abstract class GGetProductsData_products_category
    implements
        Built<GGetProductsData_products_category,
            GGetProductsData_products_categoryBuilder> {
  GGetProductsData_products_category._();

  factory GGetProductsData_products_category(
          [Function(GGetProductsData_products_categoryBuilder b) updates]) =
      _$GGetProductsData_products_category;

  static void _initializeBuilder(GGetProductsData_products_categoryBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GGetProductsData_products_category_parent? get parent;
  static Serializer<GGetProductsData_products_category> get serializer =>
      _$gGetProductsDataProductsCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductsData_products_category.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsData_products_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductsData_products_category.serializer, json);
}

abstract class GGetProductsData_products_category_parent
    implements
        Built<GGetProductsData_products_category_parent,
            GGetProductsData_products_category_parentBuilder> {
  GGetProductsData_products_category_parent._();

  factory GGetProductsData_products_category_parent(
      [Function(GGetProductsData_products_category_parentBuilder b)
          updates]) = _$GGetProductsData_products_category_parent;

  static void _initializeBuilder(
          GGetProductsData_products_category_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GGetProductsData_products_category_parent_parent? get parent;
  static Serializer<GGetProductsData_products_category_parent> get serializer =>
      _$gGetProductsDataProductsCategoryParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsData_products_category_parent.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsData_products_category_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsData_products_category_parent.serializer, json);
}

abstract class GGetProductsData_products_category_parent_parent
    implements
        Built<GGetProductsData_products_category_parent_parent,
            GGetProductsData_products_category_parent_parentBuilder> {
  GGetProductsData_products_category_parent_parent._();

  factory GGetProductsData_products_category_parent_parent(
      [Function(GGetProductsData_products_category_parent_parentBuilder b)
          updates]) = _$GGetProductsData_products_category_parent_parent;

  static void _initializeBuilder(
          GGetProductsData_products_category_parent_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductsData_products_category_parent_parent>
      get serializer =>
          _$gGetProductsDataProductsCategoryParentParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsData_products_category_parent_parent.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsData_products_category_parent_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsData_products_category_parent_parent.serializer, json);
}
