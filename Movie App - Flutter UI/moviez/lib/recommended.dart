import 'package:flutter/material.dart';
import 'const.dart';
import 'data.dart';

class Recommended extends StatelessWidget {
  final Data? data;

  Recommended(@required this.data);
  final int index = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      data!.imgUrl!,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff5E38E5),
                      offset: Offset(0, 10),
                      blurRadius: 8,
                      spreadRadius: -9)
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data!.title!, style: mediumText.copyWith(fontSize: 20)),
                  SizedBox(
                    height: 4,
                  ),
                  Text(data!.category!,
                      style: lightText.copyWith(fontSize: 16)),
                ],
              ),
              Row(
                children: <Widget>[
                  for (var i = 1; i <= index; i++)
                    i <= data!.rating!
                        ? Icon(Icons.star, color: orangeColor)
                        : Icon(Icons.star, color: greyColor)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
