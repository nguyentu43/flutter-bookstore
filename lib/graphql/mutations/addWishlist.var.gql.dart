// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'addWishlist.var.gql.g.dart';

abstract class GAddWishlistVars
    implements Built<GAddWishlistVars, GAddWishlistVarsBuilder> {
  GAddWishlistVars._();

  factory GAddWishlistVars([Function(GAddWishlistVarsBuilder b) updates]) =
      _$GAddWishlistVars;

  String? get id;
  static Serializer<GAddWishlistVars> get serializer =>
      _$gAddWishlistVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddWishlistVars.serializer, this)
          as Map<String, dynamic>);
  static GAddWishlistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddWishlistVars.serializer, json);
}
