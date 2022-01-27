// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getUserInfo.var.gql.g.dart';

abstract class GGetUserInfoVars
    implements Built<GGetUserInfoVars, GGetUserInfoVarsBuilder> {
  GGetUserInfoVars._();

  factory GGetUserInfoVars([Function(GGetUserInfoVarsBuilder b) updates]) =
      _$GGetUserInfoVars;

  static Serializer<GGetUserInfoVars> get serializer =>
      _$gGetUserInfoVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserInfoVars.serializer, this)
          as Map<String, dynamic>);
  static GGetUserInfoVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserInfoVars.serializer, json);
}
