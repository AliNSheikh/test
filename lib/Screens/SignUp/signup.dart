import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:example/Core/constants.dart';
import 'package:example/Core/Widgets/form.dart';
import 'package:example/Core/Widgets/my_button.dart';
import 'package:example/Screens/BottomNavBar/bottom_nav_bar.dart';
import 'package:example/Screens/logIn/login.dart';
import 'package:flutter/gestures.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              SvgPicture.asset(sLogo, height: 80, width: 60),
              SizedBox(
                height: 25,
              ),
              TextForm(
                onTap: () {},
                text: '  Fullname',
                textStyle: TextStyle(
                    color: Colors.grey[400], fontWeight: FontWeight.w500),
              ),
              TextForm(
                onTap: () {},
                text: '  Email',
                textStyle: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextForm(
                onTap: () {},
                text: '  Password',
                textStyle: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w500,
                ),
                showPassword: true,
              ),
              MyButton(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNav()),
                  );
                },
                text: 'Sign Up',
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 17),
                color: Color.fromRGBO(255, 133, 0, 1),
              ),
              SizedBox(
                height: 15,
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
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold),
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
                  color: const Color.fromRGBO(33, 150, 243, 1),
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
                height: 15,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By signing up you accept the ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Terms of Service \n',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(33, 150, 243, 1),
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'and',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ' Privacy Policy',
                        style: TextStyle(
                          color: Color.fromRGBO(33, 150, 243, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500],
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 17,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInPage()),
                            );
                          },
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
