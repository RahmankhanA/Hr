import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hr_management/color.dart';
import 'package:hr_management/screens/Home_page.dart';
import 'package:hr_management/screens/analytics_page.dart';
import 'package:hr_management/screens/job_description_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AnalyticsPage(),
    JobDescriptionPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              label: "Analytics",
              icon: Icon(Icons.analytics_outlined),
              activeIcon: Icon(Icons.analytics_outlined)),
          BottomNavigationBarItem(
            label: "Job Description",
            icon: Icon(Icons.business_center_outlined),
            activeIcon: Icon(Icons.business_center),
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
