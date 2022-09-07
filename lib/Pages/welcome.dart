import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/login.dart';
import 'package:ezyqure/Pages/signup.dart';

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
        padding: const EdgeInsets.only(top:25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Login in your existing account or create a new one',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/FzvqWTyW/Untitled-design.png',)
                )
              ),
            ),
            Column(
              children: [
                MaterialButton(
                  minWidth: 400,
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => loginpage()));
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0x00ffffff)),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  color:  Color(0xFF0040c2),

                  height: 60,
                  child: Text('login',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
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
                  child: Text('signup',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                ),
              ],
            )
          ],
        ),
      ),
    )));
  }
}
