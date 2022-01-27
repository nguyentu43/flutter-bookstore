// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'register.data.gql.g.dart';

abstract class GRegisterData
    implements Built<GRegisterData, GRegisterDataBuilder> {
  GRegisterData._();

  factory GRegisterData([Function(GRegisterDataBuilder b) updates]) =
      _$GRegisterData;

  static void _initializeBuilder(GRegisterDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GRegisterData> get serializer => _$gRegisterDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegisterData.serializer, this)
          as Map<String, dynamic>);
  static GRegisterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegisterData.serializer, json);
}
