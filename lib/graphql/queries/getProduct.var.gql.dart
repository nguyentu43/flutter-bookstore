// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getProduct.var.gql.g.dart';

abstract class GGetProductVars
    implements Built<GGetProductVars, GGetProductVarsBuilder> {
  GGetProductVars._();

  factory GGetProductVars([Function(GGetProductVarsBuilder b) updates]) =
      _$GGetProductVars;

  String get slug;
  static Serializer<GGetProductVars> get serializer =>
      _$gGetProductVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductVars.serializer, this)
          as Map<String, dynamic>);
  static GGetProductVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductVars.serializer, json);
}
