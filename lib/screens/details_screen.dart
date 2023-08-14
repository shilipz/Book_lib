import 'package:book_library/bloc/books_lib_bloc.dart';
import 'package:book_library/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatelessWidget {
  final Books book;
  const BookDetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Book Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocProvider(
            create: (context) => BooksLibBloc(),
            child: BlocBuilder<BooksLibBloc, BooksLibState>(
                builder: (context, state) {
              return Column(
                children: [
                  Text(
                    'Ranked ${book.rank!} in NewYork Times',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Container(
                      height: 280,
                      width: 200,
                      color: Colors.amber,
                      child: Image.network(
                        book.bookImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Text(
                    book.title!,
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                  Text(book.author!,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 22),
                  Text(book.description!, style: const TextStyle(fontSize: 18))
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
