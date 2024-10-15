import 'package:ai/screens/verify.dart';
import 'package:flutter/material.dart';

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
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;

    // Set a common width and height for both button and text field
    final commonWidth = screenWidth * 0.8; // 80% of screen width
    final commonHeight = screenHeight * 0.07; // 7% of screen height

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: myColor,
            fontSize: 24,
            fontFamily: 'iso',
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.02), // 2% padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.02), // 2% vertical spacing
              Image.asset(
                'assets/images/b.jpg',
                height: screenHeight * 0.35, // 35% of screen height
                width: commonWidth,
              ),
              SizedBox(height: screenHeight * 0.03), // 3% vertical spacing

              // TextField with same width and height as the button
              SizedBox(
                width: commonWidth,
                height: commonHeight,
                child: TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.number,
                  maxLength: 10, // Limit input to 10 digits
                  decoration: InputDecoration(
                    hoverColor: const Color(0xFFe9dee6),
                    labelText: 'Phone number',
                    labelStyle: const TextStyle(
                      color: Color(0xFF281B48),
                      fontFamily: 'iso',
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36),
                      borderSide: const BorderSide(
                        color: Color(0xFFD0BACA),
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                    counterText: "", // Hide counter text
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF281B48),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.05), // 5% vertical spacing

              // ElevatedButton with same width and height as the TextField
              SizedBox(
                width: commonWidth,
                height: commonHeight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verify(
                          number: _textEditingController.text,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: myColor,
                    textStyle: const TextStyle(
                      fontFamily: 'iso',
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

              SizedBox(height: screenHeight * 0.05), // 5% vertical spacing

              const Center(
                child: Text(
                  'OR Login with',
                  style: TextStyle(color: Color(0xFF281B48), fontFamily: 'iso'),
                ),
              ),

              SizedBox(height: screenHeight * 0.02), // 2% vertical spacing

              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    width: screenWidth * 0.1,
                    height: screenWidth * 0.1,
                  ),
                  SizedBox(width: screenWidth * 0.03), // 3% horizontal spacing
                  Image.asset(
                    'assets/images/google (1).png',
                    width: screenWidth * 0.1,
                    height: screenWidth * 0.1,
                  ),
                  SizedBox(width: screenWidth * 0.03), // 3% horizontal spacing
                  Image.asset(
                    'assets/images/twitter.png',
                    width: screenWidth * 0.1,
                    height: screenWidth * 0.1,
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.03), // 3% vertical spacing

              // Sign-up Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontFamily: 'iso',
                      fontSize: 15,
                      color: myColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Sign Up page or handle sign up logic
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: myColor,
                        fontFamily: 'iso',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
