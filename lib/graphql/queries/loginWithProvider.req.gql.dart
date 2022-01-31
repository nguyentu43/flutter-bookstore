// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/loginWithProvider.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/loginWithProvider.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/loginWithProvider.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'loginWithProvider.req.gql.g.dart';

abstract class GLoginWithProviderReq
    implements
        Built<GLoginWithProviderReq, GLoginWithProviderReqBuilder>,
        _i1.OperationRequest<_i2.GLoginWithProviderData,
            _i3.GLoginWithProviderVars> {
  GLoginWithProviderReq._();

  factory GLoginWithProviderReq(
          [Function(GLoginWithProviderReqBuilder b) updates]) =
      _$GLoginWithProviderReq;

  static void _initializeBuilder(GLoginWithProviderReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'LoginWithProvider')
    ..executeOnListen = true;
  _i3.GLoginWithProviderVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLoginWithProviderData? Function(
          _i2.GLoginWithProviderData?, _i2.GLoginWithProviderData?)?
      get updateResult;
  _i2.GLoginWithProviderData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLoginWithProviderData? parseData(Map<String, dynamic> json) =>
      _i2.GLoginWithProviderData.fromJson(json);
  static Serializer<GLoginWithProviderReq> get serializer =>
      _$gLoginWithProviderReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLoginWithProviderReq.serializer, this)
          as Map<String, dynamic>);
  static GLoginWithProviderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLoginWithProviderReq.serializer, json);
}
