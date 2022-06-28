import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gmail_ui/const.dart';
import 'package:gmail_ui/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _customAppBar() {
    return Container(
      height: 60,
      // margin: EdgeInsets.all(18),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.menu,
                color: Color(0xffe2e3e7),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Search in emails',
                style: secondaryText.copyWith(color: Color(0xffe2e3e7)),
              ),
            ],
          ),
          CircleAvatar(
            child: Text('A'),
            backgroundColor: Color(0xff77909C),
          )
        ],
      ),
    );
  }

  Widget _customListTile({
    required String name,
    required String title,
    required String msg,
    required String time,
    required bool isRead,
  }) {
    return Container(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              child: Text('G'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: isRead ? secondaryText : primaryText,
                ),
                Text(
                  title,
                  style: isRead ? secondaryText : primaryText,
                ),
                Text(
                  msg,
                  maxLines: 1,
                  style: secondaryText,
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: isRead ? secondaryText : primaryText,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Color(0xff8e8e8e),
                  )
                ],
              ))
        ],
      ),
    );
  }

  bool isScroll = true;
  double width = 120;
  Widget floatingActionButton() {
    return AnimatedContainer(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      width: width,
      duration: Duration(milliseconds: 200),
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        child: width == 120
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  width == 120
                      ? Text(
                          'Compose',
                          style: primaryText.copyWith(color: Colors.white),
                        )
                      : Text('')
                ],
              )
            : Icon(
                Icons.edit,
                color: Colors.white,
              ),
      ),
      decoration: BoxDecoration(
          color: accentColor, borderRadius: BorderRadius.circular(10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                width = 120;
              });
            } else if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                width = 50;
              });
            }
            return true;
          },
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            children: [
              _customAppBar(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Primary',
                style: secondaryText,
              ),
              Column(
                children: emails.map((email) {
                  return _customListTile(
                      name: email['name'],
                      title: email['title'],
                      msg: email['msg'],
                      time: email['time'],
                      isRead: email['is_read']);
                }).toList(),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff2e2d32),
          unselectedItemColor: Color(0xffbebfc3),
          selectedItemColor: Color(0xffc1e5fb),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Mail',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.videocam_outlined), label: 'Meet')
          ],
        ),
        floatingActionButton: floatingActionButton(),
        //  FloatingActionButton.extended(
        //   onPressed: () {},
        //   label: Text('Compose'),
        //   backgroundColor: accentColor,
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //   isExtended: isScroll,
        //   icon: Icon(Icons.edit),
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
