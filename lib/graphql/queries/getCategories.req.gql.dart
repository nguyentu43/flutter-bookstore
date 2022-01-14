// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/queries/getCategories.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/queries/getCategories.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getCategories.req.gql.g.dart';

abstract class GGetCategoriesReq
    implements
        Built<GGetCategoriesReq, GGetCategoriesReqBuilder>,
        _i1.OperationRequest<_i2.GGetCategoriesData, _i3.GGetCategoriesVars> {
  GGetCategoriesReq._();

  factory GGetCategoriesReq([Function(GGetCategoriesReqBuilder b) updates]) =
      _$GGetCategoriesReq;

  static void _initializeBuilder(GGetCategoriesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetCategories')
    ..executeOnListen = true;
  _i3.GGetCategoriesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCategoriesData? Function(
      _i2.GGetCategoriesData?, _i2.GGetCategoriesData?)? get updateResult;
  _i2.GGetCategoriesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCategoriesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCategoriesData.fromJson(json);
  static Serializer<GGetCategoriesReq> get serializer =>
      _$gGetCategoriesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCategoriesReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCategoriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCategoriesReq.serializer, json);
}
