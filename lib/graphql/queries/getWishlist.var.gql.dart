// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getWishlist.var.gql.g.dart';

abstract class GGetWishlistVars
    implements Built<GGetWishlistVars, GGetWishlistVarsBuilder> {
  GGetWishlistVars._();

  factory GGetWishlistVars([Function(GGetWishlistVarsBuilder b) updates]) =
      _$GGetWishlistVars;

  static Serializer<GGetWishlistVars> get serializer =>
      _$gGetWishlistVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetWishlistVars.serializer, this)
          as Map<String, dynamic>);
  static GGetWishlistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetWishlistVars.serializer, json);
}
