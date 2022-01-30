// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/schema.schema.gql.dart' as _i1;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i2;

part 'addRating.var.gql.g.dart';

abstract class GAddRatingVars
    implements Built<GAddRatingVars, GAddRatingVarsBuilder> {
  GAddRatingVars._();

  factory GAddRatingVars([Function(GAddRatingVarsBuilder b) updates]) =
      _$GAddRatingVars;

  _i1.GRatingData? get input;
  String get userID;
  String get productID;
  static Serializer<GAddRatingVars> get serializer =>
      _$gAddRatingVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAddRatingVars.serializer, this)
          as Map<String, dynamic>);
  static GAddRatingVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAddRatingVars.serializer, json);
}
