// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'login.var.gql.g.dart';

abstract class GLoginVars implements Built<GLoginVars, GLoginVarsBuilder> {
  GLoginVars._();

  factory GLoginVars([Function(GLoginVarsBuilder b) updates]) = _$GLoginVars;

  String get email;
  String get password;
  static Serializer<GLoginVars> get serializer => _$gLoginVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginVars.serializer, this)
          as Map<String, dynamic>);
  static GLoginVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginVars.serializer, json);
}
