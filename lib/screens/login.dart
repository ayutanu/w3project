import 'package:ai/screens/verify.dart';
import 'package:flutter/material.dart';
import 'package:ai/custom/custom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color myColor = const Color(0xFF281B48);
  Color myColor2 = const Color(0xFFD0BACA);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Get the device size using MediaQuery
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Using Stack to position semicircle and Login text
              Stack(
                children: [
                  Positioned(
                    right: size.width * 0.2,
                    top: -30,
                    child: CustomPaint(
                      size: const Size(80, 80),
                      painter: SemicirclePainter(myColor2),
                    ),
                  ),
                  const SizedBox(height: 90), // Shift Login text a bit lower
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30), // Slight shift
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: myColor,
                          fontFamily: 'awanzaman',
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),

              Image.asset(
                'assets/images/b.jpg',
                height: size.height * 0.35, // Responsive height
                width: size.width * 0.8, // Responsive width
              ),
              const SizedBox(
                  height: 30), // Add spacing between image and text field

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43),
                child: SizedBox(
                  width: double.infinity,
                  height: 50, // Same height as the button
                  child: Container(
                    decoration: BoxDecoration(
                      color: myColor2,
                      borderRadius: BorderRadius.circular(36), // Circular shape
                    ),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          color: myColor,
                          fontFamily: 'awanzaman',
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Verify(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: myColor,
                      textStyle: const TextStyle(
                        fontFamily: 'awanzaman',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 55),

              const Center(
                child: Text('OR Login with'),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/fb2.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 12),
                  Image.asset(
                    'assets/images/ig.png',
                    width: 45,
                    height: 50,
                  ),
                  const SizedBox(width: 12),
                  Image.asset(
                    'assets/images/fr.png',
                    width: 55,
                    height: 55,
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Stack(
                children: [
                  Positioned(
                    left: -25,
                    top: -30,
                    child: CustomPaint(
                      size: const Size(60, 60),
                      painter: SemicirclePainter(myColor2), // Semicircle color
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontFamily: 'awanzaman',
                          fontSize: 15,
                          color: myColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'awanzaman',
                            fontWeight: FontWeight.bold,
                            color: myColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
