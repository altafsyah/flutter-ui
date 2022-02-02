import 'package:e_wallet/goals_data.dart';
import 'package:e_wallet/screens/goal_tsx.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../widgets/goals_card.dart';
import '../widgets/suggestion_card.dart';

class HomeScreen extends StatelessWidget {
  final List<GoalsData> goals = [
    GoalsData(
        title: 'Go abroad',
        imageUrl: 'assets/goals.png',
        minRange: 100000,
        maxRange: 5000000),
    GoalsData(
        title: 'New Vehicle',
        imageUrl: 'assets/goals-2.png',
        minRange: 500000,
        maxRange: 4500000),
    GoalsData(
        title: 'Monthly Groceries',
        imageUrl: 'assets/goals.png',
        minRange: 50000,
        maxRange: 800000),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Let\'s save\nyour money here',
                      style: boldText.copyWith(
                          fontSize: 30, color: blackTextColor),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color(0xffC8D3E5),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/profile-pic.png',
                          width: 27,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Already Saved',
                      style:
                          regText.copyWith(fontSize: 18, color: blackTextColor),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.visibility,
                          color: Color(0xff0CDA95),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Rp. 4.000.000',
                          style: boldText.copyWith(
                              color: blueTextColor, fontSize: 22),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GoalsCard(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 163,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: goals.map((goal) {
                      print(goal.title);
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GoalsTsx()));
                        },
                        child: SuggestionCard(
                            title: goal.title,
                            imgUrl: goal.imageUrl,
                            min: goal.minRange,
                            max: goal.maxRange),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  size: 25,
                ),
                Icon(
                  Icons.list,
                  size: 25,
                )
              ],
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 7)
            ], color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Color(0xffffffff),
          ),
          backgroundColor: Color(0xff0CDA95),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
