// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getUserOrders.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getUserOrders.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getUserOrders.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getUserOrders.req.gql.g.dart';

abstract class GGetUserOrdersReq
    implements
        Built<GGetUserOrdersReq, GGetUserOrdersReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserOrdersData, _i3.GGetUserOrdersVars> {
  GGetUserOrdersReq._();

  factory GGetUserOrdersReq([Function(GGetUserOrdersReqBuilder b) updates]) =
      _$GGetUserOrdersReq;

  static void _initializeBuilder(GGetUserOrdersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetUserOrders')
    ..executeOnListen = true;
  _i3.GGetUserOrdersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetUserOrdersData? Function(
      _i2.GGetUserOrdersData?, _i2.GGetUserOrdersData?)? get updateResult;
  _i2.GGetUserOrdersData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetUserOrdersData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserOrdersData.fromJson(json);
  static Serializer<GGetUserOrdersReq> get serializer =>
      _$gGetUserOrdersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetUserOrdersReq.serializer, this)
          as Map<String, dynamic>);
  static GGetUserOrdersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetUserOrdersReq.serializer, json);
}
