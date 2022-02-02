import 'package:flutter/material.dart';

class Data {
  final String? imgUrl;
  final String? title;
  final String? category;
  final int? rating;

  Data({
    @required this.imgUrl,
    @required this.title,
    @required this.category,
    @required this.rating,
  });
}
