import 'dart:async';
import 'package:ezyqure/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/welcome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://i.postimg.cc/bNfccbWQ/1662515836305-removebg-preview.png',height: 190,width: 190,),
            SizedBox(height: 5,),
            Text('Ezyqure',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF0040c2)),),
            SizedBox(height: 25,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
