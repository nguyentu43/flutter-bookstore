// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'addCartItem.data.gql.g.dart';

abstract class GAddCartItemData
    implements Built<GAddCartItemData, GAddCartItemDataBuilder> {
  GAddCartItemData._();

  factory GAddCartItemData([Function(GAddCartItemDataBuilder b) updates]) =
      _$GAddCartItemData;

  static void _initializeBuilder(GAddCartItemDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAddCartItemData_cart>? get cart;
  static Serializer<GAddCartItemData> get serializer =>
      _$gAddCartItemDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddCartItemData.serializer, this)
          as Map<String, dynamic>);
  static GAddCartItemData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddCartItemData.serializer, json);
}

abstract class GAddCartItemData_cart
    implements Built<GAddCartItemData_cart, GAddCartItemData_cartBuilder> {
  GAddCartItemData_cart._();

  factory GAddCartItemData_cart(
          [Function(GAddCartItemData_cartBuilder b) updates]) =
      _$GAddCartItemData_cart;

  static void _initializeBuilder(GAddCartItemData_cartBuilder b) =>
      b..G__typename = 'ProductItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  double get price;
  String get slug;
  double get discount;
  int get quantity;
  BuiltList<GAddCartItemData_cart_images>? get images;
  static Serializer<GAddCartItemData_cart> get serializer =>
      _$gAddCartItemDataCartSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddCartItemData_cart.serializer, this)
          as Map<String, dynamic>);
  static GAddCartItemData_cart? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddCartItemData_cart.serializer, json);
}

abstract class GAddCartItemData_cart_images
    implements
        Built<GAddCartItemData_cart_images,
            GAddCartItemData_cart_imagesBuilder> {
  GAddCartItemData_cart_images._();

  factory GAddCartItemData_cart_images(
          [Function(GAddCartItemData_cart_imagesBuilder b) updates]) =
      _$GAddCartItemData_cart_images;

  static void _initializeBuilder(GAddCartItemData_cart_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get secure_url;
  static Serializer<GAddCartItemData_cart_images> get serializer =>
      _$gAddCartItemDataCartImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddCartItemData_cart_images.serializer, this) as Map<String, dynamic>);
  static GAddCartItemData_cart_images? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAddCartItemData_cart_images.serializer, json);
}
