// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'removeCartItem.data.gql.g.dart';

abstract class GRemoveCartItemData
    implements Built<GRemoveCartItemData, GRemoveCartItemDataBuilder> {
  GRemoveCartItemData._();

  factory GRemoveCartItemData(
      [Function(GRemoveCartItemDataBuilder b) updates]) = _$GRemoveCartItemData;

  static void _initializeBuilder(GRemoveCartItemDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GRemoveCartItemData_cart>? get cart;
  static Serializer<GRemoveCartItemData> get serializer =>
      _$gRemoveCartItemDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveCartItemData.serializer, this)
          as Map<String, dynamic>);
  static GRemoveCartItemData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveCartItemData.serializer, json);
}

abstract class GRemoveCartItemData_cart
    implements
        Built<GRemoveCartItemData_cart, GRemoveCartItemData_cartBuilder> {
  GRemoveCartItemData_cart._();

  factory GRemoveCartItemData_cart(
          [Function(GRemoveCartItemData_cartBuilder b) updates]) =
      _$GRemoveCartItemData_cart;

  static void _initializeBuilder(GRemoveCartItemData_cartBuilder b) =>
      b..G__typename = 'ProductItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  double get price;
  String get slug;
  double get discount;
  int get quantity;
  BuiltList<GRemoveCartItemData_cart_images>? get images;
  static Serializer<GRemoveCartItemData_cart> get serializer =>
      _$gRemoveCartItemDataCartSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveCartItemData_cart.serializer, this)
          as Map<String, dynamic>);
  static GRemoveCartItemData_cart? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRemoveCartItemData_cart.serializer, json);
}

abstract class GRemoveCartItemData_cart_images
    implements
        Built<GRemoveCartItemData_cart_images,
            GRemoveCartItemData_cart_imagesBuilder> {
  GRemoveCartItemData_cart_images._();

  factory GRemoveCartItemData_cart_images(
          [Function(GRemoveCartItemData_cart_imagesBuilder b) updates]) =
      _$GRemoveCartItemData_cart_images;

  static void _initializeBuilder(GRemoveCartItemData_cart_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get secure_url;
  static Serializer<GRemoveCartItemData_cart_images> get serializer =>
      _$gRemoveCartItemDataCartImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GRemoveCartItemData_cart_images.serializer, this)
      as Map<String, dynamic>);
  static GRemoveCartItemData_cart_images? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRemoveCartItemData_cart_images.serializer, json);
}
