import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:hr_management/color.dart';
import 'package:hr_management/data/skills.dart';
import 'package:hr_management/data/user_detail.dart';
import 'package:hr_management/screens/login_screen.dart';
import 'package:hr_management/widgets/MyCard.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  static const TextStyle mainHeadingStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle subHeadingStyle = TextStyle(
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: Image.asset("assets/image/icon_1.png"),
        onPressed: () { Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>  const LoginScreen())); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
       
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          /*
          For the Animated search bar
          */
          AnimSearchBar(
            width: MediaQuery.of(context).size.width * 0.7,
            textController: textController,
            color: Colors.black54,
closeSearchOnSuffixTap: true,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          /*
          For the Setting Icon
          */
          const Icon(Icons.settings),
          const SizedBox(
            width: 20,
          ),
          /*
          For the Notification Icon Icon
          */
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Trending Skills',
                  style: mainHeadingStyle,
                ),
              ),
              SizedBox(
                height: 45,
                child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: technicalSkill.length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                      child: Text(
                        technicalSkill[index],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 47, 87, 125),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'New Applications',
                  style: mainHeadingStyle,
                ),
              ),
             const MyCard(title: "User Experience Desiner"),
             const MyCard(title: "UI/UX Desiner"),
             const MyCard(title: "User Experience Analyst"),
             const MyCard(title: "Backend Developer"),
              
             
            ],
          ),
        ),
      ),
    );
  }
}

