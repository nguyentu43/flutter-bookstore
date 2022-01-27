// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/addCartItem.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/addCartItem.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/addCartItem.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'addCartItem.req.gql.g.dart';

abstract class GAddCartItemReq
    implements
        Built<GAddCartItemReq, GAddCartItemReqBuilder>,
        _i1.OperationRequest<_i2.GAddCartItemData, _i3.GAddCartItemVars> {
  GAddCartItemReq._();

  factory GAddCartItemReq([Function(GAddCartItemReqBuilder b) updates]) =
      _$GAddCartItemReq;

  static void _initializeBuilder(GAddCartItemReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AddCartItem')
    ..executeOnListen = true;
  _i3.GAddCartItemVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAddCartItemData? Function(_i2.GAddCartItemData?, _i2.GAddCartItemData?)?
      get updateResult;
  _i2.GAddCartItemData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAddCartItemData? parseData(Map<String, dynamic> json) =>
      _i2.GAddCartItemData.fromJson(json);
  static Serializer<GAddCartItemReq> get serializer =>
      _$gAddCartItemReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAddCartItemReq.serializer, this)
          as Map<String, dynamic>);
  static GAddCartItemReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAddCartItemReq.serializer, json);
}
