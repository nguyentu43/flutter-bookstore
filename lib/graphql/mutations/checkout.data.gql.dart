// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'checkout.data.gql.g.dart';

abstract class GCheckoutData
    implements Built<GCheckoutData, GCheckoutDataBuilder> {
  GCheckoutData._();

  factory GCheckoutData([Function(GCheckoutDataBuilder b) updates]) =
      _$GCheckoutData;

  static void _initializeBuilder(GCheckoutDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCheckoutData_order get order;
  static Serializer<GCheckoutData> get serializer => _$gCheckoutDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCheckoutData.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCheckoutData.serializer, json);
}

abstract class GCheckoutData_order
    implements Built<GCheckoutData_order, GCheckoutData_orderBuilder> {
  GCheckoutData_order._();

  factory GCheckoutData_order(
      [Function(GCheckoutData_orderBuilder b) updates]) = _$GCheckoutData_order;

  static void _initializeBuilder(GCheckoutData_orderBuilder b) =>
      b..G__typename = 'Order';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get status;
  static Serializer<GCheckoutData_order> get serializer =>
      _$gCheckoutDataOrderSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCheckoutData_order.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutData_order? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCheckoutData_order.serializer, json);
}
