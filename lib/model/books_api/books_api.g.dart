// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksApi _$BooksApiFromJson(Map<String, dynamic> json) => BooksApi(
      rank: json['rank'] as int?,
      publisher: json['publisher'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      contributor: json['contributor'] as String?,
      contributorNote: json['contributor_note'] as String?,
      bookImage: json['book_image'] as String?,
      amazonProductUrl: json['amazon_product_url'] as String?,
      ageGroup: json['age_group'] as String?,
      bookUri: json['book_uri'] as String?,
    );

Map<String, dynamic> _$BooksApiToJson(BooksApi instance) => <String, dynamic>{
      'rank': instance.rank,
      'publisher': instance.publisher,
      'description': instance.description,
      'price': instance.price,
      'title': instance.title,
      'author': instance.author,
      'contributor': instance.contributor,
      'contributor_note': instance.contributorNote,
      'book_image': instance.bookImage,
      'amazon_product_url': instance.amazonProductUrl,
      'age_group': instance.ageGroup,
      'book_uri': instance.bookUri,
    };
