import 'package:flutter/material.dart';
import '../const.dart';

class GoalsCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xffE3EDFC),
                  borderRadius: BorderRadius.circular(25)),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Buy a work desk',
                                style: mediumText.copyWith(
                                    fontSize: 16, color: blackTextColor),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 6),
                                decoration: BoxDecoration(
                                    color: Color(0xffFBD5D5),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text(
                                  '1 month left',
                                  style: boldText.copyWith(
                                      fontSize: 12, color: redTextColor),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Rp. 400.000',
                                style: mediumText.copyWith(
                                    fontSize: 14, color: blueTextColor),
                                children: [
                                  TextSpan(
                                      text: ' - Rp. 500.000',
                                      style: regText.copyWith(
                                          fontSize: 14,
                                          color: Color(0x1b1fc000000)))
                                ]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Color(0xff145FD2),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
