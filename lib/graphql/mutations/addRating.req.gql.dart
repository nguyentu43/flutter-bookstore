// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_bookstore/graphql/mutations/addRating.ast.gql.dart'
    as _i5;
import 'package:flutter_bookstore/graphql/mutations/addRating.data.gql.dart'
    as _i2;
import 'package:flutter_bookstore/graphql/mutations/addRating.var.gql.dart'
    as _i3;
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'addRating.req.gql.g.dart';

abstract class GAddRatingReq
    implements
        Built<GAddRatingReq, GAddRatingReqBuilder>,
        _i1.OperationRequest<_i2.GAddRatingData, _i3.GAddRatingVars> {
  GAddRatingReq._();

  factory GAddRatingReq([Function(GAddRatingReqBuilder b) updates]) =
      _$GAddRatingReq;

  static void _initializeBuilder(GAddRatingReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AddRating')
    ..executeOnListen = true;
  _i3.GAddRatingVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAddRatingData? Function(_i2.GAddRatingData?, _i2.GAddRatingData?)?
      get updateResult;
  _i2.GAddRatingData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAddRatingData? parseData(Map<String, dynamic> json) =>
      _i2.GAddRatingData.fromJson(json);
  static Serializer<GAddRatingReq> get serializer => _$gAddRatingReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAddRatingReq.serializer, this)
          as Map<String, dynamic>);
  static GAddRatingReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAddRatingReq.serializer, json);
}
