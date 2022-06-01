// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'removeWishlist.data.gql.g.dart';

abstract class GRemoveWishlistData
    implements Built<GRemoveWishlistData, GRemoveWishlistDataBuilder> {
  GRemoveWishlistData._();

  factory GRemoveWishlistData(
      [Function(GRemoveWishlistDataBuilder b) updates]) = _$GRemoveWishlistData;

  static void _initializeBuilder(GRemoveWishlistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get result;
  static Serializer<GRemoveWishlistData> get serializer =>
      _$gRemoveWishlistDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveWishlistData.serializer, this)
          as Map<String, dynamic>);
  static GRemoveWishlistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveWishlistData.serializer, json);
}
