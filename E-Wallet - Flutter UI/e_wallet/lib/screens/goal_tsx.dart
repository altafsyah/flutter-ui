import 'package:e_wallet/const.dart';
import 'package:e_wallet/widgets/goals_card.dart';
import 'package:flutter/material.dart';
import '../widgets/tsx_card.dart';

class GoalsTsx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Your Saving',
                    style: boldText.copyWith(fontSize: 24, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TsxCard(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Transaction',
                  style: mediumText.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: 14,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffD5FBEE),
                                borderRadius: BorderRadius.circular(6)),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.add,
                              size: 32,
                            ),
                          ),
                        ),
                        title: Text('Top up DANA'),
                        subtitle: Text('Today'),
                        trailing: Text('Rp. 10.000'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffD5FBEE),
                                borderRadius: BorderRadius.circular(6)),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.add,
                              size: 32,
                            ),
                          ),
                        ),
                        title: Text('Top up DANA'),
                        subtitle: Text('Today'),
                        trailing: Text('Rp. 10.000'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
