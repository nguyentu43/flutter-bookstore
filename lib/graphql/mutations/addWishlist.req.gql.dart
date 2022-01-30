// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/addWishlist.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/addWishlist.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/addWishlist.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'addWishlist.req.gql.g.dart';

abstract class GAddWishlistReq
    implements
        Built<GAddWishlistReq, GAddWishlistReqBuilder>,
        _i1.OperationRequest<_i2.GAddWishlistData, _i3.GAddWishlistVars> {
  GAddWishlistReq._();

  factory GAddWishlistReq([Function(GAddWishlistReqBuilder b) updates]) =
      _$GAddWishlistReq;

  static void _initializeBuilder(GAddWishlistReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AddWishlist')
    ..executeOnListen = true;
  _i3.GAddWishlistVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAddWishlistData? Function(_i2.GAddWishlistData?, _i2.GAddWishlistData?)?
      get updateResult;
  _i2.GAddWishlistData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAddWishlistData? parseData(Map<String, dynamic> json) =>
      _i2.GAddWishlistData.fromJson(json);
  static Serializer<GAddWishlistReq> get serializer =>
      _$gAddWishlistReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAddWishlistReq.serializer, this)
          as Map<String, dynamic>);
  static GAddWishlistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAddWishlistReq.serializer, json);
}
