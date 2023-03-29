import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log in',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 36,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      )),
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                    color: Color(0xff777575),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      )),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Color(0xff777575),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'Forget your Password?',
                    style: TextStyle(
                      color: Color(0xff777575),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              InkWell(
                onTap: () => {Navigator.pushNamed(context, 'home_view')},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffC42727),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'or',
                    style: TextStyle(
                      color: Color(0xff777575),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => {Navigator.pushNamed(context, 'home_view')},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: screenWidth,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Log in with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: const TextSpan(
                    text:
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color(0xff777575),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xffC42727),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal,
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
