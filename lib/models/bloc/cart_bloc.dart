import 'package:bloc/bloc.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart';

class CartEvent {}

class UpdateCartEvent extends CartEvent {
  final List<GGetUserInfoData_cart?> cart;
  UpdateCartEvent({required this.cart});
}

class CartBloc extends Bloc<CartEvent, List<GGetUserInfoData_cart?>> {
  CartBloc(List<GGetUserInfoData_cart> initialState) : super(initialState) {
    on<UpdateCartEvent>((event, emit) => emit(event.cart));
  }

  double get total => state.fold(
      0,
      (previousValue, element) =>
          previousValue +
          element!.price * (1 - element.discount) * element.quantity);
}
