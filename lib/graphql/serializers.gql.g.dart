// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GAddCartItemData.serializer)
      ..add(GAddCartItemData_cart.serializer)
      ..add(GAddCartItemData_cart_images.serializer)
      ..add(GAddCartItemReq.serializer)
      ..add(GAddCartItemVars.serializer)
      ..add(GAuthorData.serializer)
      ..add(GCartItemData.serializer)
      ..add(GCategoryData.serializer)
      ..add(GGetCategoriesData.serializer)
      ..add(GGetCategoriesData_categories.serializer)
      ..add(GGetCategoriesData_categories_children.serializer)
      ..add(GGetCategoriesData_categories_children_children.serializer)
      ..add(GGetCategoriesData_categories_parent.serializer)
      ..add(GGetCategoriesReq.serializer)
      ..add(GGetCategoriesVars.serializer)
      ..add(GGetProductData.serializer)
      ..add(GGetProductData_product.serializer)
      ..add(GGetProductData_product_authors.serializer)
      ..add(GGetProductData_product_category.serializer)
      ..add(GGetProductData_product_category_parent.serializer)
      ..add(GGetProductData_product_category_parent_parent.serializer)
      ..add(GGetProductData_product_images.serializer)
      ..add(GGetProductData_product_ratings.serializer)
      ..add(GGetProductData_product_ratings_user.serializer)
      ..add(GGetProductReq.serializer)
      ..add(GGetProductVars.serializer)
      ..add(GGetProductsData.serializer)
      ..add(GGetProductsData_products.serializer)
      ..add(GGetProductsData_products_authors.serializer)
      ..add(GGetProductsData_products_category.serializer)
      ..add(GGetProductsData_products_category_parent.serializer)
      ..add(GGetProductsData_products_category_parent_parent.serializer)
      ..add(GGetProductsData_products_images.serializer)
      ..add(GGetProductsReq.serializer)
      ..add(GGetProductsVars.serializer)
      ..add(GGetRecommentProductsData.serializer)
      ..add(GGetRecommentProductsData_products.serializer)
      ..add(GGetRecommentProductsData_products_authors.serializer)
      ..add(GGetRecommentProductsData_products_category.serializer)
      ..add(GGetRecommentProductsData_products_category_parent.serializer)
      ..add(
          GGetRecommentProductsData_products_category_parent_parent.serializer)
      ..add(GGetRecommentProductsData_products_images.serializer)
      ..add(GGetRecommentProductsReq.serializer)
      ..add(GGetRecommentProductsVars.serializer)
      ..add(GGetUserInfoData.serializer)
      ..add(GGetUserInfoData_cart.serializer)
      ..add(GGetUserInfoData_cart_images.serializer)
      ..add(GGetUserInfoData_user.serializer)
      ..add(GGetUserInfoReq.serializer)
      ..add(GGetUserInfoVars.serializer)
      ..add(GGetUserOrdersData.serializer)
      ..add(GGetUserOrdersData_orders.serializer)
      ..add(GGetUserOrdersData_orders_items.serializer)
      ..add(GGetUserOrdersData_orders_items_images.serializer)
      ..add(GGetUserOrdersReq.serializer)
      ..add(GGetUserOrdersVars.serializer)
      ..add(GLoginData.serializer)
      ..add(GLoginReq.serializer)
      ..add(GLoginVars.serializer)
      ..add(GOrderData.serializer)
      ..add(GOrderItemData.serializer)
      ..add(GProductData.serializer)
      ..add(GRatingData.serializer)
      ..add(GRegisterData.serializer)
      ..add(GRegisterData.serializer)
      ..add(GRegisterReq.serializer)
      ..add(GRegisterVars.serializer)
      ..add(GRemoveCartItemData.serializer)
      ..add(GRemoveCartItemData_cart.serializer)
      ..add(GRemoveCartItemData_cart_images.serializer)
      ..add(GRemoveCartItemReq.serializer)
      ..add(GRemoveCartItemVars.serializer)
      ..add(GUpload.serializer)
      ..add(GUserData.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddCartItemData_cart)]),
          () => new ListBuilder<GAddCartItemData_cart>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAddCartItemData_cart_images)]),
          () => new ListBuilder<GAddCartItemData_cart_images>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetCategoriesData_categories)]),
          () => new ListBuilder<GGetCategoriesData_categories>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetCategoriesData_categories_children)]),
          () => new ListBuilder<GGetCategoriesData_categories_children>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GGetCategoriesData_categories_children_children)
          ]),
          () => new ListBuilder<
              GGetCategoriesData_categories_children_children>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetProductData_product_ratings)]),
          () => new ListBuilder<GGetProductData_product_ratings>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetProductData_product_images)]),
          () => new ListBuilder<GGetProductData_product_images>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetProductData_product_authors)]),
          () => new ListBuilder<GGetProductData_product_authors>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetProductsData_products)]),
          () => new ListBuilder<GGetProductsData_products>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetProductsData_products_images)]),
          () => new ListBuilder<GGetProductsData_products_images>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetProductsData_products_authors)]),
          () => new ListBuilder<GGetProductsData_products_authors>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetRecommentProductsData_products)]),
          () => new ListBuilder<GGetRecommentProductsData_products>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GGetRecommentProductsData_products_images)
          ]),
          () => new ListBuilder<GGetRecommentProductsData_products_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GGetRecommentProductsData_products_authors)
          ]),
          () => new ListBuilder<GGetRecommentProductsData_products_authors>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetUserInfoData_cart)]),
          () => new ListBuilder<GGetUserInfoData_cart>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetUserInfoData_cart_images)]),
          () => new ListBuilder<GGetUserInfoData_cart_images>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetUserOrdersData_orders)]),
          () => new ListBuilder<GGetUserOrdersData_orders>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetUserOrdersData_orders_items)]),
          () => new ListBuilder<GGetUserOrdersData_orders_items>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetUserOrdersData_orders_items_images)]),
          () => new ListBuilder<GGetUserOrdersData_orders_items_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GOrderItemData)]),
          () => new ListBuilder<GOrderItemData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRemoveCartItemData_cart)]),
          () => new ListBuilder<GRemoveCartItemData_cart>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GRemoveCartItemData_cart_images)]),
          () => new ListBuilder<GRemoveCartItemData_cart_images>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
