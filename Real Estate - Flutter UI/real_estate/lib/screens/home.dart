import 'package:flutter/material.dart';
import 'package:real_estate/const.dart';
import 'package:real_estate/widgets/custom_bottom_appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: primaryColor,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              RichText(
                text: TextSpan(
                    text: 'California, ',
                    style: medText.copyWith(
                      fontSize: 12,
                      color: blackColor,
                    ),
                    children: [
                      TextSpan(
                          text: 'US',
                          style:
                              regText.copyWith(fontSize: 12, color: gray1Color))
                    ]),
              )
            ],
          ),
          centerTitle: true,
          leading: Container(
            child: Icon(
              Icons.category,
              color: gray1Color,
              size: 15,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              child: Icon(Icons.notifications, color: gray1Color),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: maxWidth - 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 0.6,
                                color: Color(0xff19141012))
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.search, color: gray1Color),
                              Text('Search Classic Style')
                            ],
                          ),
                          Icon(
                            Icons.mic,
                            color: primaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.filter_sharp, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomAppbar(),
      ),
    );
  }
}
