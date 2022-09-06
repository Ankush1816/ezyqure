import 'package:flutter/material.dart';
import 'home_page.dart';
import 'chat_page.dart';
import 'profile_screen.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activetab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      floatingActionButton: getFloatingButton(),
      body: getBody(),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 20,
              offset: Offset(0, 1))
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.black38,

            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.chat,
              size: 35,
              color: Colors.black38,
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.account_circle,
              size: 35,
              color: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}

Widget getBody() {
  return IndexedStack(
    //index: activeTab,
    children: [
      Homepage(),

      Center(
        child: Text('Home'),
      ),

      Center(
        child: Text('Chat'),
      ),
      Center(
        child: Text('Profile'),
      )
    ],
  );
}

Widget getFloatingButton() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 15,
        offset: Offset(0, 1),
      ),
    ], color: Colors.grey, borderRadius: BorderRadius.circular(23)),
    child: Center(
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 26,
      ),
    ),
  );
}
