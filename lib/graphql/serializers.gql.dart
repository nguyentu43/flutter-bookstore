import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:flutter_bookstore/graphql/mutations/addCartItem.data.gql.dart'
    show GAddCartItemData, GAddCartItemData_cart, GAddCartItemData_cart_images;
import 'package:flutter_bookstore/graphql/mutations/addCartItem.req.gql.dart'
    show GAddCartItemReq;
import 'package:flutter_bookstore/graphql/mutations/addCartItem.var.gql.dart'
    show GAddCartItemVars;
import 'package:flutter_bookstore/graphql/mutations/register.data.gql.dart'
    show GRegisterData;
import 'package:flutter_bookstore/graphql/mutations/register.req.gql.dart'
    show GRegisterReq;
import 'package:flutter_bookstore/graphql/mutations/register.var.gql.dart'
    show GRegisterVars;
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.data.gql.dart'
    show
        GRemoveCartItemData,
        GRemoveCartItemData_cart,
        GRemoveCartItemData_cart_images;
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.req.gql.dart'
    show GRemoveCartItemReq;
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.var.gql.dart'
    show GRemoveCartItemVars;
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
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.data.gql.dart'
    show
        GGetRecommentProductsData,
        GGetRecommentProductsData_products,
        GGetRecommentProductsData_products_authors,
        GGetRecommentProductsData_products_category,
        GGetRecommentProductsData_products_category_parent,
        GGetRecommentProductsData_products_category_parent_parent,
        GGetRecommentProductsData_products_images;
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.req.gql.dart'
    show GGetRecommentProductsReq;
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.var.gql.dart'
    show GGetRecommentProductsVars;
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart'
    show
        GGetUserInfoData,
        GGetUserInfoData_cart,
        GGetUserInfoData_cart_images,
        GGetUserInfoData_user;
import 'package:flutter_bookstore/graphql/queries/getUserInfo.req.gql.dart'
    show GGetUserInfoReq;
import 'package:flutter_bookstore/graphql/queries/getUserInfo.var.gql.dart'
    show GGetUserInfoVars;
import 'package:flutter_bookstore/graphql/queries/getUserOrders.data.gql.dart'
    show
        GGetUserOrdersData,
        GGetUserOrdersData_orders,
        GGetUserOrdersData_orders_items,
        GGetUserOrdersData_orders_items_images;
import 'package:flutter_bookstore/graphql/queries/getUserOrders.req.gql.dart'
    show GGetUserOrdersReq;
import 'package:flutter_bookstore/graphql/queries/getUserOrders.var.gql.dart'
    show GGetUserOrdersVars;
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
        GUpload,
        GUserData;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAddCartItemData,
  GAddCartItemData_cart,
  GAddCartItemData_cart_images,
  GAddCartItemReq,
  GAddCartItemVars,
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
  GGetRecommentProductsData,
  GGetRecommentProductsData_products,
  GGetRecommentProductsData_products_authors,
  GGetRecommentProductsData_products_category,
  GGetRecommentProductsData_products_category_parent,
  GGetRecommentProductsData_products_category_parent_parent,
  GGetRecommentProductsData_products_images,
  GGetRecommentProductsReq,
  GGetRecommentProductsVars,
  GGetUserInfoData,
  GGetUserInfoData_cart,
  GGetUserInfoData_cart_images,
  GGetUserInfoData_user,
  GGetUserInfoReq,
  GGetUserInfoVars,
  GGetUserOrdersData,
  GGetUserOrdersData_orders,
  GGetUserOrdersData_orders_items,
  GGetUserOrdersData_orders_items_images,
  GGetUserOrdersReq,
  GGetUserOrdersVars,
  GLoginData,
  GLoginReq,
  GLoginVars,
  GOrderData,
  GOrderItemData,
  GProductData,
  GRatingData,
  GRegisterData,
  GRegisterReq,
  GRegisterVars,
  GRemoveCartItemData,
  GRemoveCartItemData_cart,
  GRemoveCartItemData_cart_images,
  GRemoveCartItemReq,
  GRemoveCartItemVars,
  GUpload,
  GUserData
])
final Serializers serializers = _serializersBuilder.build();
