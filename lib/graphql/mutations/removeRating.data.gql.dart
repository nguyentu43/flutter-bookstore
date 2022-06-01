// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'removeRating.data.gql.g.dart';

abstract class GRemoveRatingData
    implements Built<GRemoveRatingData, GRemoveRatingDataBuilder> {
  GRemoveRatingData._();

  factory GRemoveRatingData([Function(GRemoveRatingDataBuilder b) updates]) =
      _$GRemoveRatingData;

  static void _initializeBuilder(GRemoveRatingDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get result;
  static Serializer<GRemoveRatingData> get serializer =>
      _$gRemoveRatingDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveRatingData.serializer, this)
          as Map<String, dynamic>);
  static GRemoveRatingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveRatingData.serializer, json);
}
