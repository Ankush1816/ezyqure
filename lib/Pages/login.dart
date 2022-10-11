import 'package:ezyqure/Authentication/Userredirect.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ezyqure/Pages/home_page.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEDEEFF),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Color(0xFF0040c2),
        ),
      ),
      body: (Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.postimg.cc/bwTvqk7D/Sized-Box-height-5.png"),
                fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text('Log in',
                    style: GoogleFonts.notoSansJavanese(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 40)),
                SizedBox(
                  height: 10,
                ),
                Text('Log in to your account',
                    style: GoogleFonts.notoSansJavanese(
                        color: Colors.grey.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 15)),
                SizedBox(
                  height: 30,
                ),
                Image.network(
                  'https://i.postimg.cc/VvnFTt9K/login-Icon.png',
                  height: 120,
                  width: 120,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [makeinput(label: 'Phone no')],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => Homepage()));
                },
                child: Text('Submit')),
            SizedBox(
              height: 50,
            ),
            SignInButtonBuilder(
              backgroundColor: Colors.blue,
              onPressed: () {
            AuthService().signInWithGoogle();
              },
              text: 'Log in with Google',
              image: Image.network(
                'https://i.postimg.cc/tRSMjWx7/download.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Widget makeinput({label, obsecureText = false}) {
  return Padding(
    padding: const EdgeInsets.only(left: 50.0, right: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        TextField(
          obscureText: obsecureText,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
        )
      ],
    ),
  );
}

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return ;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    await FirebaseAuth.instance.signInWithCredential(credential);
    notifyListeners();
  }
}