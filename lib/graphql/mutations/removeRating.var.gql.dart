// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'removeRating.var.gql.g.dart';

abstract class GRemoveRatingVars
    implements Built<GRemoveRatingVars, GRemoveRatingVarsBuilder> {
  GRemoveRatingVars._();

  factory GRemoveRatingVars([Function(GRemoveRatingVarsBuilder b) updates]) =
      _$GRemoveRatingVars;

  String get id;
  static Serializer<GRemoveRatingVars> get serializer =>
      _$gRemoveRatingVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveRatingVars.serializer, this)
          as Map<String, dynamic>);
  static GRemoveRatingVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveRatingVars.serializer, json);
}
