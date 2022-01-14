// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_bookstore/graphql/serializers.gql.dart' as _i1;

part 'getCategories.data.gql.g.dart';

abstract class GGetCategoriesData
    implements Built<GGetCategoriesData, GGetCategoriesDataBuilder> {
  GGetCategoriesData._();

  factory GGetCategoriesData([Function(GGetCategoriesDataBuilder b) updates]) =
      _$GGetCategoriesData;

  static void _initializeBuilder(GGetCategoriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCategoriesData_categories> get categories;
  static Serializer<GGetCategoriesData> get serializer =>
      _$gGetCategoriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCategoriesData.serializer, this)
          as Map<String, dynamic>);
  static GGetCategoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCategoriesData.serializer, json);
}

abstract class GGetCategoriesData_categories
    implements
        Built<GGetCategoriesData_categories,
            GGetCategoriesData_categoriesBuilder> {
  GGetCategoriesData_categories._();

  factory GGetCategoriesData_categories(
          [Function(GGetCategoriesData_categoriesBuilder b) updates]) =
      _$GGetCategoriesData_categories;

  static void _initializeBuilder(GGetCategoriesData_categoriesBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get icon;
  BuiltList<GGetCategoriesData_categories_children>? get children;
  GGetCategoriesData_categories_parent? get parent;
  static Serializer<GGetCategoriesData_categories> get serializer =>
      _$gGetCategoriesDataCategoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCategoriesData_categories.serializer, this) as Map<String, dynamic>);
  static GGetCategoriesData_categories? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetCategoriesData_categories.serializer, json);
}

abstract class GGetCategoriesData_categories_children
    implements
        Built<GGetCategoriesData_categories_children,
            GGetCategoriesData_categories_childrenBuilder> {
  GGetCategoriesData_categories_children._();

  factory GGetCategoriesData_categories_children(
          [Function(GGetCategoriesData_categories_childrenBuilder b) updates]) =
      _$GGetCategoriesData_categories_children;

  static void _initializeBuilder(
          GGetCategoriesData_categories_childrenBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get icon;
  BuiltList<GGetCategoriesData_categories_children_children>? get children;
  static Serializer<GGetCategoriesData_categories_children> get serializer =>
      _$gGetCategoriesDataCategoriesChildrenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCategoriesData_categories_children.serializer, this)
      as Map<String, dynamic>);
  static GGetCategoriesData_categories_children? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCategoriesData_categories_children.serializer, json);
}

abstract class GGetCategoriesData_categories_children_children
    implements
        Built<GGetCategoriesData_categories_children_children,
            GGetCategoriesData_categories_children_childrenBuilder> {
  GGetCategoriesData_categories_children_children._();

  factory GGetCategoriesData_categories_children_children(
      [Function(GGetCategoriesData_categories_children_childrenBuilder b)
          updates]) = _$GGetCategoriesData_categories_children_children;

  static void _initializeBuilder(
          GGetCategoriesData_categories_children_childrenBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetCategoriesData_categories_children_children>
      get serializer =>
          _$gGetCategoriesDataCategoriesChildrenChildrenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCategoriesData_categories_children_children.serializer, this)
      as Map<String, dynamic>);
  static GGetCategoriesData_categories_children_children? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCategoriesData_categories_children_children.serializer, json);
}

abstract class GGetCategoriesData_categories_parent
    implements
        Built<GGetCategoriesData_categories_parent,
            GGetCategoriesData_categories_parentBuilder> {
  GGetCategoriesData_categories_parent._();

  factory GGetCategoriesData_categories_parent(
          [Function(GGetCategoriesData_categories_parentBuilder b) updates]) =
      _$GGetCategoriesData_categories_parent;

  static void _initializeBuilder(
          GGetCategoriesData_categories_parentBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetCategoriesData_categories_parent> get serializer =>
      _$gGetCategoriesDataCategoriesParentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetCategoriesData_categories_parent.serializer, this)
      as Map<String, dynamic>);
  static GGetCategoriesData_categories_parent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCategoriesData_categories_parent.serializer, json);
}
