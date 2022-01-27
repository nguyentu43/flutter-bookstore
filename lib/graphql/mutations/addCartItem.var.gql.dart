// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/schema.schema.gql.dart' as _i1;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i2;

part 'addCartItem.var.gql.g.dart';

abstract class GAddCartItemVars
    implements Built<GAddCartItemVars, GAddCartItemVarsBuilder> {
  GAddCartItemVars._();

  factory GAddCartItemVars([Function(GAddCartItemVarsBuilder b) updates]) =
      _$GAddCartItemVars;

  _i1.GCartItemData get input;
  static Serializer<GAddCartItemVars> get serializer =>
      _$gAddCartItemVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAddCartItemVars.serializer, this)
          as Map<String, dynamic>);
  static GAddCartItemVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAddCartItemVars.serializer, json);
}
