// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getPaymentCode.var.gql.g.dart';

abstract class GGetPaymentCodeVars
    implements Built<GGetPaymentCodeVars, GGetPaymentCodeVarsBuilder> {
  GGetPaymentCodeVars._();

  factory GGetPaymentCodeVars(
      [Function(GGetPaymentCodeVarsBuilder b) updates]) = _$GGetPaymentCodeVars;

  int get total;
  static Serializer<GGetPaymentCodeVars> get serializer =>
      _$gGetPaymentCodeVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetPaymentCodeVars.serializer, this)
          as Map<String, dynamic>);
  static GGetPaymentCodeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetPaymentCodeVars.serializer, json);
}
