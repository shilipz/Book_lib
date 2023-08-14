part of 'books_lib_bloc.dart';

@immutable
sealed class BooksLibState {}

final class BooksLibInitial extends BooksLibState {
  List<Object?> get props => [];
}

class UserLoadedState extends BooksLibState {
  final List<Books> users;
  UserLoadedState(this.users);

  List<Object?> get props => [users];
}

class UserErrorState extends BooksLibState {
  final String error;
  UserErrorState(this.error);

  List<Object?> get props => [error];
}
