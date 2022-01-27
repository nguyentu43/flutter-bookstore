// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getUserInfo.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getUserInfo.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getUserInfo.req.gql.g.dart';

abstract class GGetUserInfoReq
    implements
        Built<GGetUserInfoReq, GGetUserInfoReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserInfoData, _i3.GGetUserInfoVars> {
  GGetUserInfoReq._();

  factory GGetUserInfoReq([Function(GGetUserInfoReqBuilder b) updates]) =
      _$GGetUserInfoReq;

  static void _initializeBuilder(GGetUserInfoReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetUserInfo')
    ..executeOnListen = true;
  _i3.GGetUserInfoVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetUserInfoData? Function(_i2.GGetUserInfoData?, _i2.GGetUserInfoData?)?
      get updateResult;
  _i2.GGetUserInfoData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetUserInfoData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserInfoData.fromJson(json);
  static Serializer<GGetUserInfoReq> get serializer =>
      _$gGetUserInfoReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetUserInfoReq.serializer, this)
          as Map<String, dynamic>);
  static GGetUserInfoReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetUserInfoReq.serializer, json);
}
