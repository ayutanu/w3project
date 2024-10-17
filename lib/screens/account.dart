import 'package:ai/screens/login.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ), // Remove shadow
        iconTheme: const IconThemeData(color: Color(0xFF281B48)),
        title: const Text(
          'Account created',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF281B48),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.1, // 10% of screen width padding
            vertical: screenHeight * 0.02, // 2% of screen height padding
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/welcome.jpg',
                  height: screenHeight * 0.4, // 40% of screen height
                  width: screenWidth * 0.7, // 70% of screen width
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // 2% vertical spacing
              const Text(
                'Hi There,',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF281B48),
                  fontFamily: 'iso',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01), // 1% vertical spacing
              const Text(
                'Complete your profile to get personalized feeds',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF281B48),
                  fontFamily: 'iso',
                ),
              ),
              SizedBox(height: screenHeight * 0.04), // 4% vertical spacing
              SizedBox(
                width: double.infinity,
                height: screenHeight * 0.06, // 8% of screen height for button
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF281B48),
                    textStyle: const TextStyle(
                      fontFamily: 'iso',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Verify',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // 2% vertical spacing
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF281B48),
                      decoration: TextDecoration.underline,
                      fontFamily: 'iso',
                    ),
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
