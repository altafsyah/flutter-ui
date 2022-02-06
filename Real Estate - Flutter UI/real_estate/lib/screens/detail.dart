import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:real_estate/const.dart';
import 'package:real_estate/widgets/custom_container.dart';
import '../widgets/custom_bottom_navbar.dart';
import '../widgets/custom_appbar.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: horz, right: horz, top: vert),
                child: CustomAppBar(
                  title: Text(
                    'Details',
                    style: boldText.copyWith(fontSize: 16, color: blackColor),
                  ),
                  leading: Icon(
                    IconlyLight.arrow_left_2,
                    size: 16,
                  ),
                  trailing: Image.asset(
                    'assets/icons/ic_dot.png',
                    width: 10,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horz, vertical: vert),
                child: Container(
                  width: width - 60,
                  height: 328,
                  child: Image.asset(
                    'assets/img/house_pic_1.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horz),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'American Classic',
                          style: semiBoldText.copyWith(
                              color: blackColor, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              IconlyBroken.location,
                              size: 18,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Highway District 201',
                              style: regText.copyWith(
                                  fontSize: 10, color: gray1Color),
                            )
                          ],
                        )
                      ],
                    ),
                    CustomContainer(
                        padding: 8,
                        child: Icon(
                          IconlyBold.heart,
                          size: 16,
                          color: Color(0xffED0000),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horz, vertical: 15),
                child: RichText(
                    text: TextSpan(
                        text:
                            'American classic house, this house has always been a target for property companies because of its ancient style but very attractive',
                        style: regText.copyWith(
                            color: gray2Color, fontSize: 12, wordSpacing: 4),
                        children: [
                      TextSpan(
                          text: ' Read More',
                          style: regText.copyWith(
                            color: primaryColor,
                            fontSize: 12,
                            wordSpacing: 4,
                          ))
                    ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horz),
                child: Text(
                  'Overview',
                  style: semiBoldText.copyWith(fontSize: 16, color: blackColor),
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.only(top: 15),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  scrollDirection: Axis.horizontal,
                  children: [
                    OverviewCard(),
                    OverviewCard(),
                    OverviewCard(),
                    OverviewCard(),
                    OverviewCard(),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price',
                            style: regText.copyWith(
                                fontSize: 12, color: gray1Color)),
                        Text('\$300',
                            style: semiBoldText.copyWith(
                                fontSize: 20, color: blackColor)),
                      ],
                    ),
                    InkWell(
                      child: Container(
                        width: width - 152,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: blackColor),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Buy',
                            style: semiBoldText.copyWith(
                                fontSize: 16, color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(14),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.srcOver),
              image: AssetImage('assets/img/overview_1.png'))),
    );
  }
}
