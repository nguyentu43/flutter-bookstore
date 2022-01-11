import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:flutter_bookstore/graphql/schema.schema.gql.dart'
    show
        GAuthorData,
        GCartItemData,
        GCategoryData,
        GOrderData,
        GOrderItemData,
        GProductData,
        GRatingData,
        GRegisterData,
        GUpload,
        GUserData;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAuthorData,
  GCartItemData,
  GCategoryData,
  GOrderData,
  GOrderItemData,
  GProductData,
  GRatingData,
  GRegisterData,
  GUpload,
  GUserData
])
final Serializers serializers = _serializersBuilder.build();
