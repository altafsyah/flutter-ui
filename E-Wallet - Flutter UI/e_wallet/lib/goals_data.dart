import 'package:flutter/cupertino.dart';

class GoalsData {
  final String? title;
  final String? imageUrl;
  final int? minRange;
  final int? maxRange;

  GoalsData({
    @required this.title,
    @required this.imageUrl,
    @required this.minRange,
    @required this.maxRange,
  });
}
