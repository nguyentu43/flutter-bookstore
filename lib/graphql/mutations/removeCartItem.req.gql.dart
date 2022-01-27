// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'removeCartItem.req.gql.g.dart';

abstract class GRemoveCartItemReq
    implements
        Built<GRemoveCartItemReq, GRemoveCartItemReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveCartItemData, _i3.GRemoveCartItemVars> {
  GRemoveCartItemReq._();

  factory GRemoveCartItemReq([Function(GRemoveCartItemReqBuilder b) updates]) =
      _$GRemoveCartItemReq;

  static void _initializeBuilder(GRemoveCartItemReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RemoveCartItem')
    ..executeOnListen = true;
  _i3.GRemoveCartItemVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRemoveCartItemData? Function(
      _i2.GRemoveCartItemData?, _i2.GRemoveCartItemData?)? get updateResult;
  _i2.GRemoveCartItemData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRemoveCartItemData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveCartItemData.fromJson(json);
  static Serializer<GRemoveCartItemReq> get serializer =>
      _$gRemoveCartItemReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRemoveCartItemReq.serializer, this)
          as Map<String, dynamic>);
  static GRemoveCartItemReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRemoveCartItemReq.serializer, json);
}
