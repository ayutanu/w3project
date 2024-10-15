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
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/p.jpg',
              height: 500,
              width: 350,
            ),
          ),
          SizedBox(
            height: 31,
          ),
          const Text(
            'Hi There',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: const Color(0xFF281B48),
                decoration: TextDecoration.underline,
                fontFamily: 'awanzaman',
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'Complete your profile to get personalized feeds',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: const Color(0xFF281B48),
              fontFamily: 'awanzaman',
            ),
          ),
          ElevatedButton(
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
                fontFamily: 'awanzaman',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
            ),
            child: const Text(
              'Complete profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                  color: const Color(0xFF281B48),
                  decoration: TextDecoration.underline,
                  fontFamily: 'awanzaman'),
            ),
          )
        ],
      ),
    );
  }
}
