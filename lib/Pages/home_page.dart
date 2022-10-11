import 'package:ezyqure/Authentication/Userredirect.dart';
import 'package:ezyqure/Pages/Feed_screen.dart';
import 'package:ezyqure/Pages/Time_Table.dart';
import 'package:ezyqure/Pages/chat_page.dart';
import 'package:ezyqure/Pages/profile_screen.dart';
import 'package:ezyqure/Pages/splash%20screen.dart';
import 'package:ezyqure/Pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> _widgetOptions = <Widget>[
    FeedScreen(),
    TimeTable(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('Ezyqure'),
        elevation: 0,
        backgroundColor: Color(0xFF0040c2),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
              )),
          IconButton(
              onPressed: () {
                AuthService().signOut();
              },
              icon: Icon(Iconsax.logout)),
        ],
      ),
      drawer: Drawer(
          child: Container(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: CircleAvatar(
                minRadius: 50,
              ),
            )
          ],
        ),
      )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        //currentIndex=_selectedIndex,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GNav(
                rippleColor: Colors.grey[200]!,
                hoverColor: Colors.blue,
                gap: 8,
                activeColor: Color(0xFF0040c2),
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Color(0xFF0040c2).withOpacity(0.1),
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: Iconsax.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Iconsax.book,
                    text: 'Bookings',
                  ),
                  GButton(
                    icon: Iconsax.message,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Iconsax.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
