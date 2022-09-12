import 'package:ezyqure/Pages/root_app.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Color(0xFF0040c2),),
      body: getbody(),
    );
  }
  
  Widget getAppbar(){
    return Container(
      child: Row(
        children: [
          Text('Chatscreen')
        ],
      ),
    );
  }
}

Widget getbody() {
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.only(left: 25,right: 25,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text('Chat',style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: Offset(0,1)

                )
              ]
            ),
            child: Row(
              children: [
                SizedBox(width: 5,),
                Icon(Icons.search,),
                SizedBox(width: 5,),
                Flexible(
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search"
                    ),
                  ),
                )

              ],
            ),
          ),
          SizedBox(width: 5,
          height: 30,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: Offset(0,1)
                )
              ],
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Row(
              children: [SizedBox(width: 20,),
                Container(width: 65,
                    height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: Colors.black)
                ),
                child: Center(
                  child: Container(
                    width: 60,height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                      ),
                  ),
                ),
                )
              ],
            ),
          ),
          SizedBox(width: 5,
            height: 30,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0,1)
                )
              ],
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Row(
              children: [SizedBox(width: 20,),
                Container(width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: Colors.black)
                  ),
                  child: Center(
                    child: Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 5,
            height: 30,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0,1)
                )
              ],
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Row(
              children: [SizedBox(width: 20,),
                Container(width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: Colors.black)
                  ),
                  child: Center(
                    child: Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 5,
            height: 30,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0,1)
                )
              ],
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Row(
              children: [SizedBox(width: 20,),
                Container(width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: Colors.black)
                  ),
                  child: Center(
                    child: Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],

      ),
    ),

  );
}
