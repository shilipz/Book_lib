part of 'books_lib_bloc.dart';

@immutable
sealed class BooksLibEvent {}

class LoadUserEvent extends BooksLibEvent {
  @override
  List<Object?> get props => [];
}
