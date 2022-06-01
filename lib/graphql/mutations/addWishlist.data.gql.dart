// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'addWishlist.data.gql.g.dart';

abstract class GAddWishlistData
    implements Built<GAddWishlistData, GAddWishlistDataBuilder> {
  GAddWishlistData._();

  factory GAddWishlistData([Function(GAddWishlistDataBuilder b) updates]) =
      _$GAddWishlistData;

  static void _initializeBuilder(GAddWishlistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get result;
  static Serializer<GAddWishlistData> get serializer =>
      _$gAddWishlistDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddWishlistData.serializer, this)
          as Map<String, dynamic>);
  static GAddWishlistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddWishlistData.serializer, json);
}
