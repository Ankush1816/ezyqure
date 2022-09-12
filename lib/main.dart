import 'package:ezyqure/Pages/home_page.dart';
import 'package:ezyqure/Pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/login.dart';
import 'package:ezyqure/Pages/splash screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) =>ChangeNotifierProvider(

    create: (context)=>GoogleSignInProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: title,
      home: Splash(),
    ),

  );


}
