// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getProducts.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getProducts.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getProducts.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getProducts.req.gql.g.dart';

abstract class GGetProductsReq
    implements
        Built<GGetProductsReq, GGetProductsReqBuilder>,
        _i1.OperationRequest<_i2.GGetProductsData, _i3.GGetProductsVars> {
  GGetProductsReq._();

  factory GGetProductsReq([Function(GGetProductsReqBuilder b) updates]) =
      _$GGetProductsReq;

  static void _initializeBuilder(GGetProductsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetProducts')
    ..executeOnListen = true;
  _i3.GGetProductsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetProductsData? Function(_i2.GGetProductsData?, _i2.GGetProductsData?)?
      get updateResult;
  _i2.GGetProductsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetProductsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetProductsData.fromJson(json);
  static Serializer<GGetProductsReq> get serializer =>
      _$gGetProductsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetProductsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetProductsReq.serializer, json);
}
