import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_management/animation/fed_animation.dart';
import 'package:hr_management/screens/signup_screen.dart';

//

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// currrent Width and Height
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    ///
    return Scaffold(
      /// APP BAR
      appBar: AppBar(
        primary: true,
        title: const Text(""),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 47, 87, 125), //change your color here
        ),
      ),

      /// Body
      body: Container(
        margin: const EdgeInsets.all(17),
        width: w,
        height: h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// FLUTTER IMAGE
            FadeAnimation(
              delay: 1,
              child: Container(
                // margin: const EdgeInsets.only(right: 35),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/image/logo.png",
                      ),
                      fit: BoxFit.fitWidth),
                ),
                height: h / 4,
                width: w / 1.5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// TOP TEXT
            FadeAnimation(
              delay: 1.5,
              child: const Text(
                "Welcome back!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            FadeAnimation(
              delay: 2,
              child: const Text(
                "Login With Your Credential to Continue",
                style: TextStyle(
                  color: Colors.black,
            
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            /// Email TextField
            FadeAnimation(
              delay: 2.5,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email/Mobile Number',
                  label: Text('Email/Mobile Number'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            /// Password TextField
            FadeAnimation(
              delay: 3,
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  label: Text('Password'),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            /// Forgot Password TEXT
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: FadeAnimation(
                      delay: 3.5,
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            /// LOG IN BUTTON
            FadeAnimation(
              delay: 3.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(w / 1.1, h / 15)),
                onPressed: () {},
                child: const Text("Log In"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// REGISTER TEXT
            
            
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>  const SignUpPage()));
            },
            child: Container(
              height: h*0.07,
              width: w,
              color: Color.fromARGB(255, 111, 114, 116),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: w*0.1),
              child: RichText(
                text: TextSpan(
                    text: "New in HR Tech?",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                          text: " Register",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor))
                    ]),
              ),
            ),
          ),
    );
  }
}
