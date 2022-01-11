// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

abstract class GAuthorData implements Built<GAuthorData, GAuthorDataBuilder> {
  GAuthorData._();

  factory GAuthorData([Function(GAuthorDataBuilder b) updates]) = _$GAuthorData;

  String? get name;
  String? get avatar;
  String? get description;
  static Serializer<GAuthorData> get serializer => _$gAuthorDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAuthorData.serializer, this)
          as Map<String, dynamic>);
  static GAuthorData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAuthorData.serializer, json);
}

abstract class GCartItemData
    implements Built<GCartItemData, GCartItemDataBuilder> {
  GCartItemData._();

  factory GCartItemData([Function(GCartItemDataBuilder b) updates]) =
      _$GCartItemData;

  int get quantity;
  String get id;
  static Serializer<GCartItemData> get serializer => _$gCartItemDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCartItemData.serializer, this)
          as Map<String, dynamic>);
  static GCartItemData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCartItemData.serializer, json);
}

abstract class GCategoryData
    implements Built<GCategoryData, GCategoryDataBuilder> {
  GCategoryData._();

  factory GCategoryData([Function(GCategoryDataBuilder b) updates]) =
      _$GCategoryData;

  String? get name;
  String? get parentID;
  String? get icon;
  static Serializer<GCategoryData> get serializer => _$gCategoryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryData.serializer, this)
          as Map<String, dynamic>);
  static GCategoryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryData.serializer, json);
}

abstract class GOrderData implements Built<GOrderData, GOrderDataBuilder> {
  GOrderData._();

  factory GOrderData([Function(GOrderDataBuilder b) updates]) = _$GOrderData;

  String get name;
  String get address;
  String? get status;
  BuiltList<GOrderItemData> get items;
  String? get paymentID;
  String get phone;
  double get total;
  static Serializer<GOrderData> get serializer => _$gOrderDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GOrderData.serializer, this)
          as Map<String, dynamic>);
  static GOrderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GOrderData.serializer, json);
}

abstract class GOrderItemData
    implements Built<GOrderItemData, GOrderItemDataBuilder> {
  GOrderItemData._();

  factory GOrderItemData([Function(GOrderItemDataBuilder b) updates]) =
      _$GOrderItemData;

  int get quantity;
  double get price;
  double get discount;
  String get id;
  static Serializer<GOrderItemData> get serializer =>
      _$gOrderItemDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GOrderItemData.serializer, this)
          as Map<String, dynamic>);
  static GOrderItemData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GOrderItemData.serializer, json);
}

abstract class GProductData
    implements Built<GProductData, GProductDataBuilder> {
  GProductData._();

  factory GProductData([Function(GProductDataBuilder b) updates]) =
      _$GProductData;

  String get name;
  double get price;
  double get discount;
  String? get description;
  String? get images;
  BuiltList<String>? get authors;
  String? get category;
  static Serializer<GProductData> get serializer => _$gProductDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProductData.serializer, this)
          as Map<String, dynamic>);
  static GProductData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProductData.serializer, json);
}

abstract class GRatingData implements Built<GRatingData, GRatingDataBuilder> {
  GRatingData._();

  factory GRatingData([Function(GRatingDataBuilder b) updates]) = _$GRatingData;

  String? get title;
  String? get comment;
  int? get rate;
  static Serializer<GRatingData> get serializer => _$gRatingDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRatingData.serializer, this)
          as Map<String, dynamic>);
  static GRatingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRatingData.serializer, json);
}

abstract class GRegisterData
    implements Built<GRegisterData, GRegisterDataBuilder> {
  GRegisterData._();

  factory GRegisterData([Function(GRegisterDataBuilder b) updates]) =
      _$GRegisterData;

  String get name;
  String get email;
  String get password;
  static Serializer<GRegisterData> get serializer => _$gRegisterDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegisterData.serializer, this)
          as Map<String, dynamic>);
  static GRegisterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegisterData.serializer, json);
}

abstract class GUpload implements Built<GUpload, GUploadBuilder> {
  GUpload._();

  factory GUpload([String? value]) =>
      _$GUpload((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUpload> get serializer =>
      _i2.DefaultScalarSerializer<GUpload>(
          (Object serialized) => GUpload((serialized as String?)));
}

abstract class GUserData implements Built<GUserData, GUserDataBuilder> {
  GUserData._();

  factory GUserData([Function(GUserDataBuilder b) updates]) = _$GUserData;

  String get name;
  String get email;
  String? get password;
  bool? get isAdmin;
  static Serializer<GUserData> get serializer => _$gUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserData.serializer, this)
          as Map<String, dynamic>);
  static GUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserData.serializer, json);
}
