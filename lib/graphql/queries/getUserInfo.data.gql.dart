// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getUserInfo.data.gql.g.dart';

abstract class GGetUserInfoData
    implements Built<GGetUserInfoData, GGetUserInfoDataBuilder> {
  GGetUserInfoData._();

  factory GGetUserInfoData([Function(GGetUserInfoDataBuilder b) updates]) =
      _$GGetUserInfoData;

  static void _initializeBuilder(GGetUserInfoDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserInfoData_user get user;
  BuiltList<GGetUserInfoData_cart>? get cart;
  static Serializer<GGetUserInfoData> get serializer =>
      _$gGetUserInfoDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserInfoData.serializer, this)
          as Map<String, dynamic>);
  static GGetUserInfoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserInfoData.serializer, json);
}

abstract class GGetUserInfoData_user
    implements Built<GGetUserInfoData_user, GGetUserInfoData_userBuilder> {
  GGetUserInfoData_user._();

  factory GGetUserInfoData_user(
          [Function(GGetUserInfoData_userBuilder b) updates]) =
      _$GGetUserInfoData_user;

  static void _initializeBuilder(GGetUserInfoData_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  bool get isAdmin;
  String get email;
  String get id;
  static Serializer<GGetUserInfoData_user> get serializer =>
      _$gGetUserInfoDataUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserInfoData_user.serializer, this)
          as Map<String, dynamic>);
  static GGetUserInfoData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserInfoData_user.serializer, json);
}

abstract class GGetUserInfoData_cart
    implements Built<GGetUserInfoData_cart, GGetUserInfoData_cartBuilder> {
  GGetUserInfoData_cart._();

  factory GGetUserInfoData_cart(
          [Function(GGetUserInfoData_cartBuilder b) updates]) =
      _$GGetUserInfoData_cart;

  static void _initializeBuilder(GGetUserInfoData_cartBuilder b) =>
      b..G__typename = 'ProductItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  double get price;
  String get slug;
  double get discount;
  int get quantity;
  BuiltList<GGetUserInfoData_cart_images>? get images;
  static Serializer<GGetUserInfoData_cart> get serializer =>
      _$gGetUserInfoDataCartSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserInfoData_cart.serializer, this)
          as Map<String, dynamic>);
  static GGetUserInfoData_cart? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserInfoData_cart.serializer, json);
}

abstract class GGetUserInfoData_cart_images
    implements
        Built<GGetUserInfoData_cart_images,
            GGetUserInfoData_cart_imagesBuilder> {
  GGetUserInfoData_cart_images._();

  factory GGetUserInfoData_cart_images(
          [Function(GGetUserInfoData_cart_imagesBuilder b) updates]) =
      _$GGetUserInfoData_cart_images;

  static void _initializeBuilder(GGetUserInfoData_cart_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get secure_url;
  static Serializer<GGetUserInfoData_cart_images> get serializer =>
      _$gGetUserInfoDataCartImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetUserInfoData_cart_images.serializer, this) as Map<String, dynamic>);
  static GGetUserInfoData_cart_images? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUserInfoData_cart_images.serializer, json);
}
