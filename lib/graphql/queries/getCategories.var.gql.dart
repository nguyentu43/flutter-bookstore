// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getCategories.var.gql.g.dart';

abstract class GGetCategoriesVars
    implements Built<GGetCategoriesVars, GGetCategoriesVarsBuilder> {
  GGetCategoriesVars._();

  factory GGetCategoriesVars([Function(GGetCategoriesVarsBuilder b) updates]) =
      _$GGetCategoriesVars;

  static Serializer<GGetCategoriesVars> get serializer =>
      _$gGetCategoriesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCategoriesVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCategoriesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCategoriesVars.serializer, json);
}
