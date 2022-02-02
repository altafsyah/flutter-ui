import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviez/disney.dart';
import 'package:moviez/recommended.dart';
import 'data.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  final List<Data> dataRecommended = [
    Data(
        imgUrl: 'assets/header-1.png',
        title: 'John Wick',
        category: 'Action, Crime',
        rating: 5),
    Data(
        imgUrl: 'assets/header-2.png',
        title: 'Bohemian',
        category: 'Documenter',
        rating: 4),
  ];

  final List<Data> dataDisney = [
    Data(
        imgUrl: 'assets/suggestion-1.png',
        title: 'Mulan Session',
        category: 'Histroy, War',
        rating: 3),
    Data(
        imgUrl: 'assets/suggestion-2.png',
        title: 'Beauty & Beast',
        category: 'Sci-Fiction',
        rating: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffF3F4F8),
            Color(0xffF3F4F8),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  width: 115,
                  height: double.infinity,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffFBFBFD), Color(0xffF0F1F6)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Moviez',
                                    style: GoogleFonts.sen().copyWith(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0D0846))),
                                Text('Watch much easier',
                                    style: GoogleFonts.sen().copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff929292))),
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20, top: 11, bottom: 11, right: 12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: Icon(
                                Icons.search_outlined,
                                size: 22,
                                color: Color(0xff0D0846),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24, right: 24, bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 280,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Recommended(dataRecommended[0]),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Recommended(dataRecommended[1]),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'From Disney',
                              style: GoogleFonts.sen().copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0D0846)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Disney(dataDisney[0]),
                            SizedBox(
                              height: 30,
                            ),
                            Disney(dataDisney[1])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
