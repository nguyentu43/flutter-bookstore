// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getProduct.data.gql.g.dart';

abstract class GGetProductData
    implements Built<GGetProductData, GGetProductDataBuilder> {
  GGetProductData._();

  factory GGetProductData([Function(GGetProductDataBuilder b) updates]) =
      _$GGetProductData;

  static void _initializeBuilder(GGetProductDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetProductData_product? get product;
  static Serializer<GGetProductData> get serializer =>
      _$gGetProductDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductData.serializer, this)
          as Map<String, dynamic>);
  static GGetProductData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductData.serializer, json);
}

abstract class GGetProductData_product
    implements Built<GGetProductData_product, GGetProductData_productBuilder> {
  GGetProductData_product._();

  factory GGetProductData_product(
          [Function(GGetProductData_productBuilder b) updates]) =
      _$GGetProductData_product;

  static void _initializeBuilder(GGetProductData_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double get price;
  BuiltList<GGetProductData_product_ratings>? get ratings;
  BuiltList<GGetProductData_product_images>? get images;
  double? get discount;
  String? get description;
  String get name;
  String get slug;
  BuiltList<GGetProductData_product_authors>? get authors;
  GGetProductData_product_category? get category;
  static Serializer<GGetProductData_product> get serializer =>
      _$gGetProductDataProductSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductData_product.serializer, this)
          as Map<String, dynamic>);
  static GGetProductData_product? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductData_product.serializer, json);
}

abstract class GGetProductData_product_ratings
    implements
        Built<GGetProductData_product_ratings,
            GGetProductData_product_ratingsBuilder> {
  GGetProductData_product_ratings._();

  factory GGetProductData_product_ratings(
          [Function(GGetProductData_product_ratingsBuilder b) updates]) =
      _$GGetProductData_product_ratings;

  static void _initializeBuilder(GGetProductData_product_ratingsBuilder b) =>
      b..G__typename = 'Rating';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get title;
  GGetProductData_product_ratings_user get user;
  String get comment;
  int get rate;
  String get createdAt;
  static Serializer<GGetProductData_product_ratings> get serializer =>
      _$gGetProductDataProductRatingsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_product_ratings.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_product_ratings? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_product_ratings.serializer, json);
}

abstract class GGetProductData_product_ratings_user
    implements
        Built<GGetProductData_product_ratings_user,
            GGetProductData_product_ratings_userBuilder> {
  GGetProductData_product_ratings_user._();

  factory GGetProductData_product_ratings_user(
          [Function(GGetProductData_product_ratings_userBuilder b) updates]) =
      _$GGetProductData_product_ratings_user;

  static void _initializeBuilder(
          GGetProductData_product_ratings_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductData_product_ratings_user> get serializer =>
      _$gGetProductDataProductRatingsUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_product_ratings_user.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_product_ratings_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_product_ratings_user.serializer, json);
}

abstract class GGetProductData_product_images
    implements
        Built<GGetProductData_product_images,
            GGetProductData_product_imagesBuilder> {
  GGetProductData_product_images._();

  factory GGetProductData_product_images(
          [Function(GGetProductData_product_imagesBuilder b) updates]) =
      _$GGetProductData_product_images;

  static void _initializeBuilder(GGetProductData_product_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get public_id;
  String get secure_url;
  static Serializer<GGetProductData_product_images> get serializer =>
      _$gGetProductDataProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductData_product_images.serializer, this) as Map<String, dynamic>);
  static GGetProductData_product_images? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_product_images.serializer, json);
}

abstract class GGetProductData_product_authors
    implements
        Built<GGetProductData_product_authors,
            GGetProductData_product_authorsBuilder> {
  GGetProductData_product_authors._();

  factory GGetProductData_product_authors(
          [Function(GGetProductData_product_authorsBuilder b) updates]) =
      _$GGetProductData_product_authors;

  static void _initializeBuilder(GGetProductData_product_authorsBuilder b) =>
      b..G__typename = 'Author';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductData_product_authors> get serializer =>
      _$gGetProductDataProductAuthorsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_product_authors.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_product_authors? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_product_authors.serializer, json);
}

abstract class GGetProductData_product_category
    implements
        Built<GGetProductData_product_category,
            GGetProductData_product_categoryBuilder> {
  GGetProductData_product_category._();

  factory GGetProductData_product_category(
          [Function(GGetProductData_product_categoryBuilder b) updates]) =
      _$GGetProductData_product_category;

  static void _initializeBuilder(GGetProductData_product_categoryBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GGetProductData_product_category_parent? get parent;
  static Serializer<GGetProductData_product_category> get serializer =>
      _$gGetProductDataProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_product_category.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_product_category.serializer, json);
}

abstract class GGetProductData_product_category_parent
    implements
        Built<GGetProductData_product_category_parent,
            GGetProductData_product_category_parentBuilder> {
  GGetProductData_product_category_parent._();

  factory GGetProductData_product_category_parent(
      [Function(GGetProductData_product_category_parentBuilder b)
          updates]) = _$GGetProductData_product_category_parent;

  static void _initializeBuilder(
          GGetProductData_product_category_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GGetProductData_product_category_parent_parent? get parent;
  static Serializer<GGetProductData_product_category_parent> get serializer =>
      _$gGetProductDataProductCategoryParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_product_category_parent.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_product_category_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_product_category_parent.serializer, json);
}

abstract class GGetProductData_product_category_parent_parent
    implements
        Built<GGetProductData_product_category_parent_parent,
            GGetProductData_product_category_parent_parentBuilder> {
  GGetProductData_product_category_parent_parent._();

  factory GGetProductData_product_category_parent_parent(
      [Function(GGetProductData_product_category_parent_parentBuilder b)
          updates]) = _$GGetProductData_product_category_parent_parent;

  static void _initializeBuilder(
          GGetProductData_product_category_parent_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductData_product_category_parent_parent>
      get serializer => _$gGetProductDataProductCategoryParentParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_product_category_parent_parent.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_product_category_parent_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_product_category_parent_parent.serializer, json);
}
