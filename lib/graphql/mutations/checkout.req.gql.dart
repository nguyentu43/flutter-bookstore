// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/checkout.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/checkout.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/checkout.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'checkout.req.gql.g.dart';

abstract class GCheckoutReq
    implements
        Built<GCheckoutReq, GCheckoutReqBuilder>,
        _i1.OperationRequest<_i2.GCheckoutData, _i3.GCheckoutVars> {
  GCheckoutReq._();

  factory GCheckoutReq([Function(GCheckoutReqBuilder b) updates]) =
      _$GCheckoutReq;

  static void _initializeBuilder(GCheckoutReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'Checkout')
    ..executeOnListen = true;
  _i3.GCheckoutVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCheckoutData? Function(_i2.GCheckoutData?, _i2.GCheckoutData?)?
      get updateResult;
  _i2.GCheckoutData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCheckoutData? parseData(Map<String, dynamic> json) =>
      _i2.GCheckoutData.fromJson(json);
  static Serializer<GCheckoutReq> get serializer => _$gCheckoutReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCheckoutReq.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCheckoutReq.serializer, json);
}
