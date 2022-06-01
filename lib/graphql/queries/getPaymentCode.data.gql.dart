// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getPaymentCode.data.gql.g.dart';

abstract class GGetPaymentCodeData
    implements Built<GGetPaymentCodeData, GGetPaymentCodeDataBuilder> {
  GGetPaymentCodeData._();

  factory GGetPaymentCodeData(
      [Function(GGetPaymentCodeDataBuilder b) updates]) = _$GGetPaymentCodeData;

  static void _initializeBuilder(GGetPaymentCodeDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get code;
  static Serializer<GGetPaymentCodeData> get serializer =>
      _$gGetPaymentCodeDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetPaymentCodeData.serializer, this)
          as Map<String, dynamic>);
  static GGetPaymentCodeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetPaymentCodeData.serializer, json);
}
