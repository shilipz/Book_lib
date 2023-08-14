import 'package:book_library/model/book_model.dart';
import 'package:book_library/repo/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_lib_event.dart';
part 'books_lib_state.dart';

class BooksLibBloc extends Bloc<BooksLibEvent, BooksLibState> {
  final BooksRepository userRepository = BooksRepository();
  BooksLibBloc() : super(BooksLibInitial()) {
    on<BooksLibEvent>((event, emit) async {
      emit(BooksLibInitial());
      try {
        final users = await userRepository.getBooks();
        emit(UserLoadedState(users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
