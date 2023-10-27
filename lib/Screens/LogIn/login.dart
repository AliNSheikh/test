import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Core/Widgets/form.dart';
import 'package:example/Core/Widgets/my_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:example/Screens/BottomNavBar/bottom_nav_bar.dart';
import 'package:example/Screens/SignUp/signup.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 85,
              ),
              SvgPicture.asset(sLogo, height: 80, width: 90),
              SizedBox(
                height: 25,
              ),
              TextForm(
                onTap: () {},
                text: '  Email',
                textStyle: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.w500),
              ),
              TextForm(
                onTap: () {},
                text: '  Password',
                textStyle: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.w500),
                showPassword: true,
              ),
              SizedBox(
                height: 15,
              ),
              MyButton(
                text: 'Log in',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                color: Color.fromRGBO(255, 133, 0, 1),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNav()),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Colors.blue[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      height: 40,
                      thickness: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      height: 40,
                      thickness: 1.5,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              MyButton(
                  onTap: null,
                  text: 'Log in with Facebook',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  color: Colors.blue[600]!,
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  )),
              MyButton(
                onTap: null,
                text: 'Log in with Google',
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
                color: Colors.grey[200]!,
                icon: SvgPicture.asset(
                  'images/google.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(
                height: 110,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
