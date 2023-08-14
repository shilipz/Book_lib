import 'package:book_library/model/book_model.dart';
import 'package:book_library/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_library/bloc/books_lib_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('Lib'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(12),
          child: GridWidget(),
        ),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksLibBloc()..add(LoadUserEvent()),
      child: BlocBuilder<BooksLibBloc, BooksLibState>(
        builder: (context, state) {
          if (state is BooksLibInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserErrorState) {
            return const Center(
              child: Text('Api fetching failed'),
            );
          } else if (state is UserLoadedState) {
            List<Books> userList = state.users;
            return Padding(
              padding: const EdgeInsets.all(22),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemCount: 15,
                itemBuilder: (context, index) {
                  String? img = userList[index].bookImage;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                BookDetailsScreen(book: userList[index]),
                          ));
                    },
                    child: Container(
                        height: 250,
                        color: Colors.amberAccent,
                        child: Image.network(
                          img!,
                          fit: BoxFit.fill,
                        )),
                  );
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
