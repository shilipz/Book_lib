import 'dart:convert';
import 'dart:developer';
import 'package:book_library/model/book_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class BooksRepository {
  String booksUrl =
      'https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=GowKIxOnLb6vRSDvfrQSyzpGVh4oP23M#';

  Future<List<Books>> getBooks() async {
    Response response = await http.get(Uri.parse(booksUrl));

    if (response.statusCode == 200) {
      // log(response.body.toString());
      final result = jsonDecode(response.body);
      final model = BookModel.fromJson(result);
      log(model.results!.books![0].bookImage.toString());
      return model.results!.books!;
    } else {
      return [];
    }
  }
}
