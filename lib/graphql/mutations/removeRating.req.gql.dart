// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/removeRating.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/removeRating.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/removeRating.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'removeRating.req.gql.g.dart';

abstract class GRemoveRatingReq
    implements
        Built<GRemoveRatingReq, GRemoveRatingReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveRatingData, _i3.GRemoveRatingVars> {
  GRemoveRatingReq._();

  factory GRemoveRatingReq([Function(GRemoveRatingReqBuilder b) updates]) =
      _$GRemoveRatingReq;

  static void _initializeBuilder(GRemoveRatingReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RemoveRating')
    ..executeOnListen = true;
  _i3.GRemoveRatingVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRemoveRatingData? Function(
      _i2.GRemoveRatingData?, _i2.GRemoveRatingData?)? get updateResult;
  _i2.GRemoveRatingData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRemoveRatingData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveRatingData.fromJson(json);
  static Serializer<GRemoveRatingReq> get serializer =>
      _$gRemoveRatingReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRemoveRatingReq.serializer, this)
          as Map<String, dynamic>);
  static GRemoveRatingReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRemoveRatingReq.serializer, json);
}
