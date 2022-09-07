import 'package:flutter/material.dart';
import 'package:ezyqure/Pages/home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
      body: SafeArea(
        child: (Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage("https://i.postimg.cc/bwTvqk7D/Sized-Box-height-5.png"), fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Signup',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create a new account',
                    style: TextStyle(
                        fontSize: 15, color: Colors.grey.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    'https://i.postimg.cc/VvnFTt9K/login-Icon.png',
                    height: 120,
                    width: 120,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    makeinput(label: 'Name'),
                    SizedBox(height: 5,),
                    makeinput(label: 'Surname'),
                    SizedBox(height: 5,),
                    makeinput(label: 'Phone no'),
                  ],
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
                onPressed: () {},
                text: 'Signup with Google',
                icon: Icons.usb,
                image: Image.network(
                  'https://i.postimg.cc/tRSMjWx7/download.png',
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

Widget makeinput({label, obsecureText = false}) {
  return Padding(
    padding: const EdgeInsets.only(left: 70.0, right: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
