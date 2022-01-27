import 'package:bloc/bloc.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart';

class AuthEvent {}

class LoginEvent extends AuthEvent {
  final GGetUserInfoData_user user;
  LoginEvent({required this.user});
}

class LogoutEvent extends AuthEvent {}

class AuthBloc extends Bloc<AuthEvent, GGetUserInfoData_user?> {
  AuthBloc(GGetUserInfoData_user? initialState) : super(initialState) {
    on<LoginEvent>((event, emit) => emit(event.user));
    on<LogoutEvent>((event, emit) => emit(null));
  }
}
