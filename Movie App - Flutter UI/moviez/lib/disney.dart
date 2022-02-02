import 'package:flutter/material.dart';
import 'package:moviez/const.dart';
import 'data.dart';

class Disney extends StatelessWidget {
  final Data? data;
  Disney(@required this.data);
  final int index = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 125,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff169E9F),
                    offset: Offset(0, 5),
                    blurRadius: 12,
                    spreadRadius: -7),
              ],
              image: DecorationImage(image: AssetImage(data!.imgUrl!))),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data!.title!, style: mediumText.copyWith(fontSize: 20)),
            SizedBox(
              height: 4,
            ),
            Text(
              data!.category!,
              style: lightText.copyWith(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                for (var i = 1; i <= index; i++)
                  i <= data!.rating!
                      ? Icon(Icons.star, color: orangeColor)
                      : Icon(Icons.star, color: greyColor)
              ],
            )
          ],
        )
      ],
    );
  }
}
