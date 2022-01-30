// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getWishlist.data.gql.g.dart';

abstract class GGetWishlistData
    implements Built<GGetWishlistData, GGetWishlistDataBuilder> {
  GGetWishlistData._();

  factory GGetWishlistData([Function(GGetWishlistDataBuilder b) updates]) =
      _$GGetWishlistData;

  static void _initializeBuilder(GGetWishlistDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetWishlistData_products>? get products;
  static Serializer<GGetWishlistData> get serializer =>
      _$gGetWishlistDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetWishlistData.serializer, this)
          as Map<String, dynamic>);
  static GGetWishlistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetWishlistData.serializer, json);
}

abstract class GGetWishlistData_products
    implements
        Built<GGetWishlistData_products, GGetWishlistData_productsBuilder> {
  GGetWishlistData_products._();

  factory GGetWishlistData_products(
          [Function(GGetWishlistData_productsBuilder b) updates]) =
      _$GGetWishlistData_products;

  static void _initializeBuilder(GGetWishlistData_productsBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get slug;
  BuiltList<GGetWishlistData_products_images>? get images;
  double get price;
  double? get discount;
  static Serializer<GGetWishlistData_products> get serializer =>
      _$gGetWishlistDataProductsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetWishlistData_products.serializer, this)
          as Map<String, dynamic>);
  static GGetWishlistData_products? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetWishlistData_products.serializer, json);
}

abstract class GGetWishlistData_products_images
    implements
        Built<GGetWishlistData_products_images,
            GGetWishlistData_products_imagesBuilder> {
  GGetWishlistData_products_images._();

  factory GGetWishlistData_products_images(
          [Function(GGetWishlistData_products_imagesBuilder b) updates]) =
      _$GGetWishlistData_products_images;

  static void _initializeBuilder(GGetWishlistData_products_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get secure_url;
  String get public_id;
  static Serializer<GGetWishlistData_products_images> get serializer =>
      _$gGetWishlistDataProductsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetWishlistData_products_images.serializer, this)
      as Map<String, dynamic>);
  static GGetWishlistData_products_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetWishlistData_products_images.serializer, json);
}
