import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/login.dart';
import 'package:ezyqure/Pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(color: Color(0xFF0040c2),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/FzvqWTyW/Untitled-design.png',)
                )
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Welcome',style: GoogleFonts.notoSansJavanese(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Log in your existing account or create a new one',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                MaterialButton(
                  minWidth: 400,
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => LoginPage()));
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0x00ffffff)),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  color: Colors.white,

                  height: 60,
                  child: Text('Log in',style: GoogleFonts.notoSansJavanese(color: Color(0xFF0040c2),fontWeight: FontWeight.bold,fontSize: 20)),
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  minWidth: 400,
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => SignupPage()));
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0x00ffffff)),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  color: Colors.white,

                  height: 60,
                  child: Text('Sign up',style: GoogleFonts.notoSansJavanese(color: Color(0xFF0040c2),fontWeight: FontWeight.bold,fontSize: 20)),
                ),

              ],
            )
          ],
        ),
      ),
    )));
  }
}
