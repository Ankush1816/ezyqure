import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/chat_page.dart';
import 'package:ezyqure/Pages/profile_screen.dart';
import 'package:ezyqure/Pages/home_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ezyqure'),
        elevation: 0,
        backgroundColor: Color(0xFF0040c2),
        actions: [
          IconButton(onPressed: (){}, icon:Icon( Icons.question_answer, )),
          IconButton(onPressed: (){}, icon: Icon( Icons.logout)),
        ],
      ),
      drawer: Drawer(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircleAvatar(
                minRadius: 50,
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xFF0040c2),
        child: Padding(
          padding: const EdgeInsets.only(left: 35.0,right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){ Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => Homepage()));}, icon: Icon(Icons.home),color: Colors.white),
              IconButton(onPressed: (){ Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => ChatPage()));}, icon: Icon(Icons.message),color: Colors.white),
              IconButton(onPressed: (){ Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => Profile()));}, icon: Icon(Icons.person),color: Colors.white)
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [Text('data')],
        ),
      ),
    );
  }
}
