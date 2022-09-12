import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF0040c2),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.post_add))
          ],
        ));
  }
}

getAppbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.indigo.withOpacity(0.2),
    flexibleSpace: SafeArea(
      child: Column(
        children: [
          Container(
            width: 75,
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
          )
        ],
      ),
    ),
  );
}
