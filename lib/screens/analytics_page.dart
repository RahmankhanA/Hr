import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hr_management/screens/login_screen.dart';
import 'package:hr_management/widgets/MyCard.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
       /// currrent Width and Height
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: Image.asset("assets/image/icon_1.png"),
        onPressed: () { Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>  const LoginScreen())); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
          title: const Text("Analytics"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications_active),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: MediaQuery.of(context).size.height*0.60,
                color: Colors.white38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/image/analytics_page_image.png",
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            // shadowColor: Colors.white,
                            child: Container(
                              width: w*0.8,
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "16",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 47, 87, 125),
                                    ),
                                  ),
                                  Text(
                                    "Total JD",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w*0.38,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 134, 234, 167),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        "09",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Active JD",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: w*0.38,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 239, 96, 96),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        "07",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Inactive JD",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Container(
                  width: w*0.8,
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.verified_user,
                                size: 18,
                                color: Color.fromARGB(255, 47, 87, 125),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    size: 18,
                                    color: Color.fromARGB(255, 47, 87, 125),
                                  ),
                                  Icon(
                                    Icons.person,
                                    size: 18,
                                    color: Color.fromARGB(255, 47, 87, 125),
                                  ),
                                  Icon(
                                    Icons.person,
                                    size: 18,
                                    color: Color.fromARGB(255, 47, 87, 125),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Total Placed Candidates",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                      Text("60",
                       style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                                  ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        child: Icon(Icons.arrow_forward_ios,
                        size: 18,
                        color:Color.fromARGB(255, 47, 87, 125)),
                      )
                    ],),
                    ],
                    
                   
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
