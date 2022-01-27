// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getRecommendProducts.data.gql.g.dart';

abstract class GGetRecommentProductsData
    implements
        Built<GGetRecommentProductsData, GGetRecommentProductsDataBuilder> {
  GGetRecommentProductsData._();

  factory GGetRecommentProductsData(
          [Function(GGetRecommentProductsDataBuilder b) updates]) =
      _$GGetRecommentProductsData;

  static void _initializeBuilder(GGetRecommentProductsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetRecommentProductsData_products> get products;
  static Serializer<GGetRecommentProductsData> get serializer =>
      _$gGetRecommentProductsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRecommentProductsData.serializer, this)
          as Map<String, dynamic>);
  static GGetRecommentProductsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRecommentProductsData.serializer, json);
}

abstract class GGetRecommentProductsData_products
    implements
        Built<GGetRecommentProductsData_products,
            GGetRecommentProductsData_productsBuilder> {
  GGetRecommentProductsData_products._();

  factory GGetRecommentProductsData_products(
          [Function(GGetRecommentProductsData_productsBuilder b) updates]) =
      _$GGetRecommentProductsData_products;

  static void _initializeBuilder(GGetRecommentProductsData_productsBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double get price;
  BuiltList<GGetRecommentProductsData_products_images>? get images;
  double? get discount;
  String? get description;
  String get name;
  String get slug;
  BuiltList<GGetRecommentProductsData_products_authors>? get authors;
  GGetRecommentProductsData_products_category? get category;
  static Serializer<GGetRecommentProductsData_products> get serializer =>
      _$gGetRecommentProductsDataProductsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRecommentProductsData_products.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommentProductsData_products? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRecommentProductsData_products.serializer, json);
}

abstract class GGetRecommentProductsData_products_images
    implements
        Built<GGetRecommentProductsData_products_images,
            GGetRecommentProductsData_products_imagesBuilder> {
  GGetRecommentProductsData_products_images._();

  factory GGetRecommentProductsData_products_images(
      [Function(GGetRecommentProductsData_products_imagesBuilder b)
          updates]) = _$GGetRecommentProductsData_products_images;

  static void _initializeBuilder(
          GGetRecommentProductsData_products_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get public_id;
  String get secure_url;
  static Serializer<GGetRecommentProductsData_products_images> get serializer =>
      _$gGetRecommentProductsDataProductsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRecommentProductsData_products_images.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommentProductsData_products_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRecommentProductsData_products_images.serializer, json);
}

abstract class GGetRecommentProductsData_products_authors
    implements
        Built<GGetRecommentProductsData_products_authors,
            GGetRecommentProductsData_products_authorsBuilder> {
  GGetRecommentProductsData_products_authors._();

  factory GGetRecommentProductsData_products_authors(
      [Function(GGetRecommentProductsData_products_authorsBuilder b)
          updates]) = _$GGetRecommentProductsData_products_authors;

  static void _initializeBuilder(
          GGetRecommentProductsData_products_authorsBuilder b) =>
      b..G__typename = 'Author';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetRecommentProductsData_products_authors>
      get serializer => _$gGetRecommentProductsDataProductsAuthorsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRecommentProductsData_products_authors.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommentProductsData_products_authors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRecommentProductsData_products_authors.serializer, json);
}

abstract class GGetRecommentProductsData_products_category
    implements
        Built<GGetRecommentProductsData_products_category,
            GGetRecommentProductsData_products_categoryBuilder> {
  GGetRecommentProductsData_products_category._();

  factory GGetRecommentProductsData_products_category(
      [Function(GGetRecommentProductsData_products_categoryBuilder b)
          updates]) = _$GGetRecommentProductsData_products_category;

  static void _initializeBuilder(
          GGetRecommentProductsData_products_categoryBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GGetRecommentProductsData_products_category_parent? get parent;
  static Serializer<GGetRecommentProductsData_products_category>
      get serializer => _$gGetRecommentProductsDataProductsCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRecommentProductsData_products_category.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommentProductsData_products_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRecommentProductsData_products_category.serializer, json);
}

abstract class GGetRecommentProductsData_products_category_parent
    implements
        Built<GGetRecommentProductsData_products_category_parent,
            GGetRecommentProductsData_products_category_parentBuilder> {
  GGetRecommentProductsData_products_category_parent._();

  factory GGetRecommentProductsData_products_category_parent(
      [Function(GGetRecommentProductsData_products_category_parentBuilder b)
          updates]) = _$GGetRecommentProductsData_products_category_parent;

  static void _initializeBuilder(
          GGetRecommentProductsData_products_category_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GGetRecommentProductsData_products_category_parent_parent? get parent;
  static Serializer<GGetRecommentProductsData_products_category_parent>
      get serializer =>
          _$gGetRecommentProductsDataProductsCategoryParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRecommentProductsData_products_category_parent.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommentProductsData_products_category_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRecommentProductsData_products_category_parent.serializer, json);
}

abstract class GGetRecommentProductsData_products_category_parent_parent
    implements
        Built<GGetRecommentProductsData_products_category_parent_parent,
            GGetRecommentProductsData_products_category_parent_parentBuilder> {
  GGetRecommentProductsData_products_category_parent_parent._();

  factory GGetRecommentProductsData_products_category_parent_parent(
      [Function(
              GGetRecommentProductsData_products_category_parent_parentBuilder
                  b)
          updates]) = _$GGetRecommentProductsData_products_category_parent_parent;

  static void _initializeBuilder(
          GGetRecommentProductsData_products_category_parent_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetRecommentProductsData_products_category_parent_parent>
      get serializer =>
          _$gGetRecommentProductsDataProductsCategoryParentParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommentProductsData_products_category_parent_parent.serializer,
      this) as Map<String, dynamic>);
  static GGetRecommentProductsData_products_category_parent_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRecommentProductsData_products_category_parent_parent.serializer,
          json);
}
