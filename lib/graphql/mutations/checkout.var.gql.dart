// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/schema.schema.gql.dart' as _i1;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i2;

part 'checkout.var.gql.g.dart';

abstract class GCheckoutVars
    implements Built<GCheckoutVars, GCheckoutVarsBuilder> {
  GCheckoutVars._();

  factory GCheckoutVars([Function(GCheckoutVarsBuilder b) updates]) =
      _$GCheckoutVars;

  _i1.GOrderData get input;
  static Serializer<GCheckoutVars> get serializer => _$gCheckoutVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCheckoutVars.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCheckoutVars.serializer, json);
}
