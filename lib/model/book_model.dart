class BookModel {
  Results? results;

  BookModel({this.results});

  BookModel.fromJson(Map<String, dynamic> json) {
    results =
        json['results'] != null ? Results.fromJson(json['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.toJson();
    }
    return data;
  }
}

class Results {
  String? displayName;
  List<Books>? books;

  Results({this.displayName, this.books});

  Results.fromJson(Map<String, dynamic> json) {
    displayName = json['display_name'];
    if (json['books'] != null) {
      books = <Books>[];
      json['books'].forEach((v) {
        books!.add(Books.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['display_name'] = displayName;
    if (books != null) {
      data['books'] = books!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Books {
  int? rank;
  String? description;
  String? title;
  String? author;
  String? bookImage;

  Books({this.rank, this.description, this.title, this.author, this.bookImage});

  Books.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
    description = json['description'];
    title = json['title'];
    author = json['author'];
    bookImage = json['book_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rank'] = rank;
    data['description'] = description;
    data['title'] = title;
    data['author'] = author;
    data['book_image'] = bookImage;
    return data;
  }
}
