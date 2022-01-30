// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'addRating.data.gql.g.dart';

abstract class GAddRatingData
    implements Built<GAddRatingData, GAddRatingDataBuilder> {
  GAddRatingData._();

  factory GAddRatingData([Function(GAddRatingDataBuilder b) updates]) =
      _$GAddRatingData;

  static void _initializeBuilder(GAddRatingDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddRatingData_result? get result;
  static Serializer<GAddRatingData> get serializer =>
      _$gAddRatingDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddRatingData.serializer, this)
          as Map<String, dynamic>);
  static GAddRatingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddRatingData.serializer, json);
}

abstract class GAddRatingData_result
    implements Built<GAddRatingData_result, GAddRatingData_resultBuilder> {
  GAddRatingData_result._();

  factory GAddRatingData_result(
          [Function(GAddRatingData_resultBuilder b) updates]) =
      _$GAddRatingData_result;

  static void _initializeBuilder(GAddRatingData_resultBuilder b) =>
      b..G__typename = 'Rating';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  int get rate;
  String get comment;
  static Serializer<GAddRatingData_result> get serializer =>
      _$gAddRatingDataResultSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddRatingData_result.serializer, this)
          as Map<String, dynamic>);
  static GAddRatingData_result? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddRatingData_result.serializer, json);
}
