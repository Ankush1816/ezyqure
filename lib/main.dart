import 'package:ezyqure/Pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/login.dart';
import 'package:ezyqure/Pages/splash screen.dart';


 void main(){
   runApp(MyApp());
 }
 
 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);
 
   @override
   State<MyApp> createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      home:Splash()
   
     );
   }
 }
 