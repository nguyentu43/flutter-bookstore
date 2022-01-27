// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getUserOrders.data.gql.g.dart';

abstract class GGetUserOrdersData
    implements Built<GGetUserOrdersData, GGetUserOrdersDataBuilder> {
  GGetUserOrdersData._();

  factory GGetUserOrdersData([Function(GGetUserOrdersDataBuilder b) updates]) =
      _$GGetUserOrdersData;

  static void _initializeBuilder(GGetUserOrdersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetUserOrdersData_orders> get orders;
  static Serializer<GGetUserOrdersData> get serializer =>
      _$gGetUserOrdersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserOrdersData.serializer, this)
          as Map<String, dynamic>);
  static GGetUserOrdersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserOrdersData.serializer, json);
}

abstract class GGetUserOrdersData_orders
    implements
        Built<GGetUserOrdersData_orders, GGetUserOrdersData_ordersBuilder> {
  GGetUserOrdersData_orders._();

  factory GGetUserOrdersData_orders(
          [Function(GGetUserOrdersData_ordersBuilder b) updates]) =
      _$GGetUserOrdersData_orders;

  static void _initializeBuilder(GGetUserOrdersData_ordersBuilder b) =>
      b..G__typename = 'Order';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get address;
  double get total;
  String get status;
  String get phone;
  String get createdAt;
  BuiltList<GGetUserOrdersData_orders_items>? get items;
  static Serializer<GGetUserOrdersData_orders> get serializer =>
      _$gGetUserOrdersDataOrdersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserOrdersData_orders.serializer, this)
          as Map<String, dynamic>);
  static GGetUserOrdersData_orders? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUserOrdersData_orders.serializer, json);
}

abstract class GGetUserOrdersData_orders_items
    implements
        Built<GGetUserOrdersData_orders_items,
            GGetUserOrdersData_orders_itemsBuilder> {
  GGetUserOrdersData_orders_items._();

  factory GGetUserOrdersData_orders_items(
          [Function(GGetUserOrdersData_orders_itemsBuilder b) updates]) =
      _$GGetUserOrdersData_orders_items;

  static void _initializeBuilder(GGetUserOrdersData_orders_itemsBuilder b) =>
      b..G__typename = 'ProductItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get slug;
  double get price;
  double get discount;
  int get quantity;
  BuiltList<GGetUserOrdersData_orders_items_images>? get images;
  static Serializer<GGetUserOrdersData_orders_items> get serializer =>
      _$gGetUserOrdersDataOrdersItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetUserOrdersData_orders_items.serializer, this)
      as Map<String, dynamic>);
  static GGetUserOrdersData_orders_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUserOrdersData_orders_items.serializer, json);
}

abstract class GGetUserOrdersData_orders_items_images
    implements
        Built<GGetUserOrdersData_orders_items_images,
            GGetUserOrdersData_orders_items_imagesBuilder> {
  GGetUserOrdersData_orders_items_images._();

  factory GGetUserOrdersData_orders_items_images(
          [Function(GGetUserOrdersData_orders_items_imagesBuilder b) updates]) =
      _$GGetUserOrdersData_orders_items_images;

  static void _initializeBuilder(
          GGetUserOrdersData_orders_items_imagesBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get secure_url;
  static Serializer<GGetUserOrdersData_orders_items_images> get serializer =>
      _$gGetUserOrdersDataOrdersItemsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetUserOrdersData_orders_items_images.serializer, this)
      as Map<String, dynamic>);
  static GGetUserOrdersData_orders_items_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetUserOrdersData_orders_items_images.serializer, json);
}
