import 'package:flutter/material.dart';
import 'package:hr_management/screens/login_screen.dart';

class JobDescriptionPage extends StatefulWidget {
  const JobDescriptionPage({Key? key}) : super(key: key);

  @override
  State<JobDescriptionPage> createState() => _JobDescriptionPageState();
}

class _JobDescriptionPageState extends State<JobDescriptionPage> {
  @override
  Widget build(BuildContext context) {
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
          title: const Text("Job Description"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications_active),
            ),
          ],
        ),
      body: const Center(
        child: Text("JobDescriptionPage"),
      ),
    );
  }
}
