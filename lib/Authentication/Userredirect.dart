import 'package:ezyqure/Pages/home_page.dart';
import 'package:ezyqure/Pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) =>Scaffold(
    body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());

          } else if(snapshot.hasData){
            return Homepage();
          }else if(snapshot.hasError){return Center(child: Text('error'),);
          }else{
            return SignupPage();
          }

        }
    ),
  );

}

