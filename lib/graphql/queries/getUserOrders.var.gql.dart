// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getUserOrders.var.gql.g.dart';

abstract class GGetUserOrdersVars
    implements Built<GGetUserOrdersVars, GGetUserOrdersVarsBuilder> {
  GGetUserOrdersVars._();

  factory GGetUserOrdersVars([Function(GGetUserOrdersVarsBuilder b) updates]) =
      _$GGetUserOrdersVars;

  static Serializer<GGetUserOrdersVars> get serializer =>
      _$gGetUserOrdersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserOrdersVars.serializer, this)
          as Map<String, dynamic>);
  static GGetUserOrdersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserOrdersVars.serializer, json);
}
