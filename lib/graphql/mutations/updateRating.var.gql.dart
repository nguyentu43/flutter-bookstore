// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/schema.schema.gql.dart' as _i1;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i2;

part 'updateRating.var.gql.g.dart';

abstract class GUpdateRatingVars
    implements Built<GUpdateRatingVars, GUpdateRatingVarsBuilder> {
  GUpdateRatingVars._();

  factory GUpdateRatingVars([Function(GUpdateRatingVarsBuilder b) updates]) =
      _$GUpdateRatingVars;

  _i1.GRatingData? get input;
  String get userID;
  String get id;
  static Serializer<GUpdateRatingVars> get serializer =>
      _$gUpdateRatingVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateRatingVars.serializer, this)
          as Map<String, dynamic>);
  static GUpdateRatingVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateRatingVars.serializer, json);
}
