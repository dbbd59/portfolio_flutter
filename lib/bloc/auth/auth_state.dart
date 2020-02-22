part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthStateLogged extends AuthState {}

class AuthStateUnLogged extends AuthState {}
