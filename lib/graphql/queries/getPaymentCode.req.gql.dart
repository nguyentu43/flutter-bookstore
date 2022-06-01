// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getPaymentCode.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getPaymentCode.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getPaymentCode.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getPaymentCode.req.gql.g.dart';

abstract class GGetPaymentCodeReq
    implements
        Built<GGetPaymentCodeReq, GGetPaymentCodeReqBuilder>,
        _i1.OperationRequest<_i2.GGetPaymentCodeData, _i3.GGetPaymentCodeVars> {
  GGetPaymentCodeReq._();

  factory GGetPaymentCodeReq([Function(GGetPaymentCodeReqBuilder b) updates]) =
      _$GGetPaymentCodeReq;

  static void _initializeBuilder(GGetPaymentCodeReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetPaymentCode')
    ..executeOnListen = true;
  _i3.GGetPaymentCodeVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetPaymentCodeData? Function(
      _i2.GGetPaymentCodeData?, _i2.GGetPaymentCodeData?)? get updateResult;
  _i2.GGetPaymentCodeData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetPaymentCodeData? parseData(Map<String, dynamic> json) =>
      _i2.GGetPaymentCodeData.fromJson(json);
  static Serializer<GGetPaymentCodeReq> get serializer =>
      _$gGetPaymentCodeReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetPaymentCodeReq.serializer, this)
          as Map<String, dynamic>);
  static GGetPaymentCodeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetPaymentCodeReq.serializer, json);
}
