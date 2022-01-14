// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getProducts.var.gql.g.dart';

abstract class GGetProductsVars
    implements Built<GGetProductsVars, GGetProductsVarsBuilder> {
  GGetProductsVars._();

  factory GGetProductsVars([Function(GGetProductsVarsBuilder b) updates]) =
      _$GGetProductsVars;

  String? get search;
  int? get offset;
  int? get limit;
  static Serializer<GGetProductsVars> get serializer =>
      _$gGetProductsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductsVars.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductsVars.serializer, json);
}
