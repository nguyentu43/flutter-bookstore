// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'removeCartItem.var.gql.g.dart';

abstract class GRemoveCartItemVars
    implements Built<GRemoveCartItemVars, GRemoveCartItemVarsBuilder> {
  GRemoveCartItemVars._();

  factory GRemoveCartItemVars(
      [Function(GRemoveCartItemVarsBuilder b) updates]) = _$GRemoveCartItemVars;

  String get productID;
  static Serializer<GRemoveCartItemVars> get serializer =>
      _$gRemoveCartItemVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveCartItemVars.serializer, this)
          as Map<String, dynamic>);
  static GRemoveCartItemVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveCartItemVars.serializer, json);
}
