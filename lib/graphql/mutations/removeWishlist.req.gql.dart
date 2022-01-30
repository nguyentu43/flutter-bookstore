// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/removeWishlist.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/removeWishlist.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/removeWishlist.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'removeWishlist.req.gql.g.dart';

abstract class GRemoveWishlistReq
    implements
        Built<GRemoveWishlistReq, GRemoveWishlistReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveWishlistData, _i3.GRemoveWishlistVars> {
  GRemoveWishlistReq._();

  factory GRemoveWishlistReq([Function(GRemoveWishlistReqBuilder b) updates]) =
      _$GRemoveWishlistReq;

  static void _initializeBuilder(GRemoveWishlistReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RemoveWishlist')
    ..executeOnListen = true;
  _i3.GRemoveWishlistVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRemoveWishlistData? Function(
      _i2.GRemoveWishlistData?, _i2.GRemoveWishlistData?)? get updateResult;
  _i2.GRemoveWishlistData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRemoveWishlistData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveWishlistData.fromJson(json);
  static Serializer<GRemoveWishlistReq> get serializer =>
      _$gRemoveWishlistReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRemoveWishlistReq.serializer, this)
          as Map<String, dynamic>);
  static GRemoveWishlistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRemoveWishlistReq.serializer, json);
}
