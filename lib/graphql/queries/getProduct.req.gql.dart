// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getProduct.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getProduct.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getProduct.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getProduct.req.gql.g.dart';

abstract class GGetProductReq
    implements
        Built<GGetProductReq, GGetProductReqBuilder>,
        _i1.OperationRequest<_i2.GGetProductData, _i3.GGetProductVars> {
  GGetProductReq._();

  factory GGetProductReq([Function(GGetProductReqBuilder b) updates]) =
      _$GGetProductReq;

  static void _initializeBuilder(GGetProductReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetProduct')
    ..executeOnListen = true;
  _i3.GGetProductVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetProductData? Function(_i2.GGetProductData?, _i2.GGetProductData?)?
      get updateResult;
  _i2.GGetProductData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetProductData? parseData(Map<String, dynamic> json) =>
      _i2.GGetProductData.fromJson(json);
  static Serializer<GGetProductReq> get serializer =>
      _$gGetProductReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetProductReq.serializer, this)
          as Map<String, dynamic>);
  static GGetProductReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetProductReq.serializer, json);
}
