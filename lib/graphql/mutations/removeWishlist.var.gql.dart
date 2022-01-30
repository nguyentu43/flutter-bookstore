// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'removeWishlist.var.gql.g.dart';

abstract class GRemoveWishlistVars
    implements Built<GRemoveWishlistVars, GRemoveWishlistVarsBuilder> {
  GRemoveWishlistVars._();

  factory GRemoveWishlistVars(
      [Function(GRemoveWishlistVarsBuilder b) updates]) = _$GRemoveWishlistVars;

  String? get id;
  static Serializer<GRemoveWishlistVars> get serializer =>
      _$gRemoveWishlistVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveWishlistVars.serializer, this)
          as Map<String, dynamic>);
  static GRemoveWishlistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveWishlistVars.serializer, json);
}
