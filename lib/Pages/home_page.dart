import 'package:ezyqure/Pages/root_app.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: getAppbar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: SingleChildScrollView(child: getBody()),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feed",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xFFFFE0DF), Color(0xFFE1F)])),
                      child: Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xFFFFE0DF), Color(0xFFE1F)])),
                      child: Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xFFFFE0DF), Color(0xFFE1F)])),
                      child: Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                    width: 360,
                    height: 230,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                        )
                      ],
                    )),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Icon(Icons.thumb_up,color: Colors.grey.withOpacity(0.25),size: 34,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Column(
                                children: [
                                  Text('Like',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  ),
                                  SizedBox(width: 10,),

                                ],
                              ),

                            ],
                        ),




                      ],

                    ),
                  ),

                ),


              ],

            ),

          ],
        ),
      ),
    );
  }

  Widget getAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                  )),
              Text(
                "Ezyqure",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_center,
              ))
        ],
      ),
    );
  }
}
