// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'loginWithProvider.data.gql.g.dart';

abstract class GLoginWithProviderData
    implements Built<GLoginWithProviderData, GLoginWithProviderDataBuilder> {
  GLoginWithProviderData._();

  factory GLoginWithProviderData(
          [Function(GLoginWithProviderDataBuilder b) updates]) =
      _$GLoginWithProviderData;

  static void _initializeBuilder(GLoginWithProviderDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GLoginWithProviderData> get serializer =>
      _$gLoginWithProviderDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginWithProviderData.serializer, this)
          as Map<String, dynamic>);
  static GLoginWithProviderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginWithProviderData.serializer, json);
}
