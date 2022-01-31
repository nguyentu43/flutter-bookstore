// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'loginWithProvider.var.gql.g.dart';

abstract class GLoginWithProviderVars
    implements Built<GLoginWithProviderVars, GLoginWithProviderVarsBuilder> {
  GLoginWithProviderVars._();

  factory GLoginWithProviderVars(
          [Function(GLoginWithProviderVarsBuilder b) updates]) =
      _$GLoginWithProviderVars;

  String get email;
  String get name;
  static Serializer<GLoginWithProviderVars> get serializer =>
      _$gLoginWithProviderVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginWithProviderVars.serializer, this)
          as Map<String, dynamic>);
  static GLoginWithProviderVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginWithProviderVars.serializer, json);
}
