import 'package:flutter/material.dart';
import '../const.dart';

class SuggestionCard extends StatelessWidget {
  String? title;
  String? imgUrl;
  int? min;
  int? max;

  SuggestionCard({
    @required this.title,
    @required this.imgUrl,
    @required this.min,
    @required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 163,
      height: 163,
      decoration: BoxDecoration(
        color: Color(0xffE3EDFC),
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
            image: AssetImage(imgUrl!), alignment: Alignment(10.0, -3)),
      ),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: mediumText.copyWith(
                        fontSize: 14, color: blackTextColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Rp. $min',
                        style: mediumText.copyWith(
                            fontSize: 10, color: blueTextColor),
                        children: [
                          TextSpan(
                              text: ' - Rp. $max',
                              style: regText.copyWith(
                                  fontSize: 10, color: Color(0x1b1fc000000)))
                        ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
