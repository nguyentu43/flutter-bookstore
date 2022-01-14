// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'login.data.gql.g.dart';

abstract class GLoginData implements Built<GLoginData, GLoginDataBuilder> {
  GLoginData._();

  factory GLoginData([Function(GLoginDataBuilder b) updates]) = _$GLoginData;

  static void _initializeBuilder(GLoginDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GLoginData> get serializer => _$gLoginDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginData.serializer, this)
          as Map<String, dynamic>);
  static GLoginData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginData.serializer, json);
}
