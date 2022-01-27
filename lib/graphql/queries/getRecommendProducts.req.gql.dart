// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getRecommendProducts.req.gql.g.dart';

abstract class GGetRecommentProductsReq
    implements
        Built<GGetRecommentProductsReq, GGetRecommentProductsReqBuilder>,
        _i1.OperationRequest<_i2.GGetRecommentProductsData,
            _i3.GGetRecommentProductsVars> {
  GGetRecommentProductsReq._();

  factory GGetRecommentProductsReq(
          [Function(GGetRecommentProductsReqBuilder b) updates]) =
      _$GGetRecommentProductsReq;

  static void _initializeBuilder(GGetRecommentProductsReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetRecommentProducts')
    ..executeOnListen = true;
  _i3.GGetRecommentProductsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetRecommentProductsData? Function(
          _i2.GGetRecommentProductsData?, _i2.GGetRecommentProductsData?)?
      get updateResult;
  _i2.GGetRecommentProductsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetRecommentProductsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetRecommentProductsData.fromJson(json);
  static Serializer<GGetRecommentProductsReq> get serializer =>
      _$gGetRecommentProductsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetRecommentProductsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetRecommentProductsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGetRecommentProductsReq.serializer, json);
}
