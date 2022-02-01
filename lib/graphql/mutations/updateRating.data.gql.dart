// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'updateRating.data.gql.g.dart';

abstract class GUpdateRatingData
    implements Built<GUpdateRatingData, GUpdateRatingDataBuilder> {
  GUpdateRatingData._();

  factory GUpdateRatingData([Function(GUpdateRatingDataBuilder b) updates]) =
      _$GUpdateRatingData;

  static void _initializeBuilder(GUpdateRatingDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateRatingData_updateRating? get updateRating;
  static Serializer<GUpdateRatingData> get serializer =>
      _$gUpdateRatingDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateRatingData.serializer, this)
          as Map<String, dynamic>);
  static GUpdateRatingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateRatingData.serializer, json);
}

abstract class GUpdateRatingData_updateRating
    implements
        Built<GUpdateRatingData_updateRating,
            GUpdateRatingData_updateRatingBuilder> {
  GUpdateRatingData_updateRating._();

  factory GUpdateRatingData_updateRating(
          [Function(GUpdateRatingData_updateRatingBuilder b) updates]) =
      _$GUpdateRatingData_updateRating;

  static void _initializeBuilder(GUpdateRatingData_updateRatingBuilder b) =>
      b..G__typename = 'Rating';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  int get rate;
  String get comment;
  static Serializer<GUpdateRatingData_updateRating> get serializer =>
      _$gUpdateRatingDataUpdateRatingSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GUpdateRatingData_updateRating.serializer, this) as Map<String, dynamic>);
  static GUpdateRatingData_updateRating? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUpdateRatingData_updateRating.serializer, json);
}
