import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:real_estate/const.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                // AppBar
                CustomAppBar(),
                SizedBox(
                  height: 30,
                ),
                // Search Field
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      width: width - 110,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                IconlyLight.search,
                                size: 20,
                                color: gray1Color,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Search Classic Style',
                                style: regText.copyWith(
                                    color: gray2Color, fontSize: 12),
                              ),
                            ],
                          ),
                          Icon(
                            IconlyLight.voice,
                            size: 20,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainer(
                      child: Icon(
                        IconlyLight.filter,
                        size: 20,
                        color: Colors.white,
                      ),
                      color: blackColor,
                    )
                  ],
                ),
                // End of Search
                // Header
                Container(
                  width: 240,
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/house_pic_1.png'))),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'American Classic',
                            style: boldText.copyWith(
                                fontSize: 16, color: whiteColor),
                          ),
                          Text(
                            'Highway District 20',
                            style: regText.copyWith(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                      CustomContainer(
                        child: Icon(
                          IconlyBold.heart,
                          color: Color(0xffED0000),
                          size: 14,
                        ),
                        padding: 5,
                        color: Colors.white.withOpacity(0.5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavbar()),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  Widget? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          child: Icon(
            IconlyLight.category,
            color: gray1Color,
            size: 20,
          ),
        ),
        title != null
            ? title!
            : Row(
                children: [
                  Icon(
                    IconlyBroken.location,
                    color: primaryColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'California, ',
                          style: semiBoldText.copyWith(
                              fontSize: 12, color: blackColor),
                          children: [
                        TextSpan(
                            text: 'US',
                            style: regText.copyWith(
                                fontSize: 12, color: gray1Color))
                      ]))
                ],
              ),
        CustomContainer(
          child: Icon(
            IconlyLight.notification,
            color: gray1Color,
            size: 20,
          ),
        )
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? padding;
  CustomContainer({@required this.child, this.color, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding != null ? padding! : 10),
      child: child!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color == null ? Colors.white : color!,
      ),
    );
  }
}

class CustomBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      iconSize: 22,
      currentIndex: 0,
      elevation: 0,
      selectedItemColor: blackColor,
      selectedLabelStyle: medText.copyWith(fontSize: 12, color: blackColor),
      unselectedItemColor: gray1Color,
      unselectedLabelStyle: regText.copyWith(fontSize: 12, color: gray1Color),
      items: [
        BottomNavigationBarItem(
          icon: Icon(IconlyBold.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.heart),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.profile),
          label: 'Profile',
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
