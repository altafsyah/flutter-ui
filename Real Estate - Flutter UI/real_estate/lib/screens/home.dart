import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:real_estate/const.dart';
import '../widgets/custom_bottom_navbar.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_container.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // AppBar
                Padding(
                  padding: EdgeInsets.only(left: horz, right: horz, top: vert),
                  child: CustomAppBar(),
                ),
                SizedBox(
                  height: 30,
                ),
                // Search Field
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horz),
                  child: Row(
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
                ),
                SizedBox(
                  height: 30,
                ),
                // End of Search
                // Header
                Container(
                  height: 280,
                  width: double.infinity,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: horz),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail()));
                        },
                        child: HeaderCard(
                            imgUrl: 'assets/img/house_pic_1.png',
                            title: 'American Classic',
                            subTitle: 'Highway District 10'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      HeaderCard(
                          imgUrl: 'assets/img/house_pic_2.png',
                          title: 'Modernistic House',
                          subTitle: 'Br. Bridgeway 301'),
                    ],
                  ),
                ),
                // End of Header
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horz),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: semiBoldText.copyWith(
                                color: blackColor, fontSize: 16),
                          ),
                          Text(
                            'See More',
                            style: semiBoldText.copyWith(
                                color: gray2Color, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PopularCard(
                          title: 'Minimalist House',
                          subTitle: 'Calf District 10',
                          imgUrl: 'assets/img/popular_house1.png'),
                      SizedBox(
                        height: 15,
                      ),
                      PopularCard(
                          title: 'Futuristic House',
                          subTitle: 'Pile Broadway 920',
                          imgUrl: 'assets/img/popular_house2.png')
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavbar()),
    );
  }
}

class PopularCard extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? imgUrl;

  PopularCard({
    @required this.title,
    @required this.subTitle,
    @required this.imgUrl,
  });

  @override
  _PopularCardState createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
        width: width - 60,
        height: 82,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: -9,
                  offset: Offset(0, 9))
            ]),
        child: ListTile(
          leading: Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), BlendMode.srcOver),
                    image: AssetImage(widget.imgUrl!))),
          ),
          title: Text(
            widget.title!,
            style: semiBoldText.copyWith(color: blackColor, fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle!,
            style: regText.copyWith(color: gray1Color, fontSize: 10),
          ),
          trailing: InkWell(
            onTap: () {
              setState(() {
                isFav = !isFav;
              });
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: isFav
                  ? Icon(IconlyBold.heart, color: Color(0xffED0000), size: 14)
                  : Icon(
                      IconlyBold.heart,
                      color: gray3Color,
                      size: 14,
                    ),
            ),
          ),
        ));
  }
}

class HeaderCard extends StatefulWidget {
  final String? imgUrl;
  final String? title;
  final String? subTitle;

  HeaderCard({
    @required this.imgUrl,
    @required this.title,
    @required this.subTitle,
  });

  @override
  _HeaderCardState createState() => _HeaderCardState();
}

class _HeaderCardState extends State<HeaderCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 240,
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.srcOver),
              image: AssetImage(widget.imgUrl!))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.title!,
                style: boldText.copyWith(fontSize: 16, color: whiteColor),
              ),
              Text(
                widget.subTitle!,
                style: regText.copyWith(fontSize: 10, color: Colors.white),
              )
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                isFav = !isFav;
              });
            },
            child: CustomContainer(
              child: isFav
                  ? Icon(
                      IconlyBold.heart,
                      color: Color(0xffED0000),
                      size: 14,
                    )
                  : Icon(
                      IconlyBold.heart,
                      color: gray1Color,
                      size: 14,
                    ),
              padding: 5,
              color: Colors.white.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}
