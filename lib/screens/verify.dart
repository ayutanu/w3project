import 'package:flutter/material.dart';
import 'package:ai/custom/otpinput.dart';
import 'package:ai/custom/custom.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
          textAlign: TextAlign.center,
          'Mobile number verification',
          style: TextStyle(
            color: Color(0xFF281B48),
            fontFamily: 'awanzaman',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/rr.jpg',
              height: 500,
              width: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter the 5-digit OTP sent to the number:',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF281B48),
              ),
            ),
            const SizedBox(height: 20),
            const OtpInput(),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Resend code?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF281B48),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                    backgroundColor: Color(0xFF281B48),
                    textStyle: const TextStyle(
                      fontFamily: 'awanzaman',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    elevation: 50,
                  ),
                  child: const Text(
                    'Verify',
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
