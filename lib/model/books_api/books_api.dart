import 'package:json_annotation/json_annotation.dart';

part 'books_api.g.dart';

@JsonSerializable()
class BooksApi {
  int? rank;
  String? publisher;
  String? description;
  String? price;
  String? title;
  String? author;
  String? contributor;
  @JsonKey(name: 'contributor_note')
  String? contributorNote;
  @JsonKey(name: 'book_image')
  String? bookImage;
  @JsonKey(name: 'amazon_product_url')
  String? amazonProductUrl;
  @JsonKey(name: 'age_group')
  String? ageGroup;
  @JsonKey(name: 'book_uri')
  String? bookUri;

  BooksApi({
    this.rank,
    this.publisher,
    this.description,
    this.price,
    this.title,
    this.author,
    this.contributor,
    this.contributorNote,
    this.bookImage,
    this.amazonProductUrl,
    this.ageGroup,
    this.bookUri,
  });

  factory BooksApi.fromJson(Map<String, dynamic> json) {
    return _$BooksApiFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BooksApiToJson(this);
}
