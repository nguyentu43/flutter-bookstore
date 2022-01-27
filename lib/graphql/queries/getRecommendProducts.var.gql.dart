// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getRecommendProducts.var.gql.g.dart';

abstract class GGetRecommentProductsVars
    implements
        Built<GGetRecommentProductsVars, GGetRecommentProductsVarsBuilder> {
  GGetRecommentProductsVars._();

  factory GGetRecommentProductsVars(
          [Function(GGetRecommentProductsVarsBuilder b) updates]) =
      _$GGetRecommentProductsVars;

  int? get offset;
  int? get limit;
  static Serializer<GGetRecommentProductsVars> get serializer =>
      _$gGetRecommentProductsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRecommentProductsVars.serializer, this)
          as Map<String, dynamic>);
  static GGetRecommentProductsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRecommentProductsVars.serializer, json);
}
