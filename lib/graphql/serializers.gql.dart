import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart'
    show
        GGetCategoriesData,
        GGetCategoriesData_categories,
        GGetCategoriesData_categories_children,
        GGetCategoriesData_categories_children_children,
        GGetCategoriesData_categories_parent;
import 'package:flutter_bookstore/graphql/queries/getCategories.req.gql.dart'
    show GGetCategoriesReq;
import 'package:flutter_bookstore/graphql/queries/getCategories.var.gql.dart'
    show GGetCategoriesVars;
import 'package:flutter_bookstore/graphql/queries/getProduct.data.gql.dart'
    show
        GGetProductData,
        GGetProductData_product,
        GGetProductData_product_authors,
        GGetProductData_product_category,
        GGetProductData_product_category_parent,
        GGetProductData_product_category_parent_parent,
        GGetProductData_product_images,
        GGetProductData_product_ratings,
        GGetProductData_product_ratings_user;
import 'package:flutter_bookstore/graphql/queries/getProduct.req.gql.dart'
    show GGetProductReq;
import 'package:flutter_bookstore/graphql/queries/getProduct.var.gql.dart'
    show GGetProductVars;
import 'package:flutter_bookstore/graphql/queries/getProducts.data.gql.dart'
    show
        GGetProductsData,
        GGetProductsData_products,
        GGetProductsData_products_authors,
        GGetProductsData_products_category,
        GGetProductsData_products_category_parent,
        GGetProductsData_products_category_parent_parent,
        GGetProductsData_products_images;
import 'package:flutter_bookstore/graphql/queries/getProducts.req.gql.dart'
    show GGetProductsReq;
import 'package:flutter_bookstore/graphql/queries/getProducts.var.gql.dart'
    show GGetProductsVars;
import 'package:flutter_bookstore/graphql/queries/login.data.gql.dart'
    show GLoginData;
import 'package:flutter_bookstore/graphql/queries/login.req.gql.dart'
    show GLoginReq;
import 'package:flutter_bookstore/graphql/queries/login.var.gql.dart'
    show GLoginVars;
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
  GGetCategoriesData,
  GGetCategoriesData_categories,
  GGetCategoriesData_categories_children,
  GGetCategoriesData_categories_children_children,
  GGetCategoriesData_categories_parent,
  GGetCategoriesReq,
  GGetCategoriesVars,
  GGetProductData,
  GGetProductData_product,
  GGetProductData_product_authors,
  GGetProductData_product_category,
  GGetProductData_product_category_parent,
  GGetProductData_product_category_parent_parent,
  GGetProductData_product_images,
  GGetProductData_product_ratings,
  GGetProductData_product_ratings_user,
  GGetProductReq,
  GGetProductVars,
  GGetProductsData,
  GGetProductsData_products,
  GGetProductsData_products_authors,
  GGetProductsData_products_category,
  GGetProductsData_products_category_parent,
  GGetProductsData_products_category_parent_parent,
  GGetProductsData_products_images,
  GGetProductsReq,
  GGetProductsVars,
  GLoginData,
  GLoginReq,
  GLoginVars,
  GOrderData,
  GOrderItemData,
  GProductData,
  GRatingData,
  GRegisterData,
  GUpload,
  GUserData
])
final Serializers serializers = _serializersBuilder.build();
