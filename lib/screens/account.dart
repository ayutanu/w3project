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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          'Account created',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF281B48),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 45), // Consistent horizontal padding
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          children: [
            Center(
              child: Image.asset(
                'assets/images/p.jpg',
                height: 400,
                width: 300,
              ),
            ),
            const SizedBox(
                height: 15), // Increased vertical spacing for consistency
            const Text(
              'Hi There,',
              style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF281B48),
                  fontFamily: 'awanzaman',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Complete your profile to get personalized feeds',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF281B48),
                fontFamily: 'awanzaman',
              ),
            ),
            const SizedBox(height: 31),
            SizedBox(
              width: double.infinity, // Full width of the parent container
              height: 60, // Adjust height as needed
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const Login(), // Navigate to Login screen
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF281B48),
                  textStyle: const TextStyle(
                    fontFamily: 'awanzaman',
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
            const SizedBox(height: 18),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF281B48),
                    decoration: TextDecoration.underline,
                    fontFamily: 'awanzaman',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
