import 'package:ai/screens/account.dart';
import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  const Verify({super.key, required this.number});

  final String number;

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  // Controller for the OTP input
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          'Mobile number verification',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF281B48),
            fontFamily: 'iso',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.08,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.4,
                child: Image.asset(
                  'assets/images/rr.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              Column(
                children: [
                  const Text(
                    'Enter the 5-digit OTP sent to  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF281B48),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'this phone number:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF281B48),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        widget.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFF281B48),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // Single Long OTP TextField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: SizedBox(
                  height: 55,
                  child: TextField(
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 5, // Limit input to 5 digits
                    decoration: InputDecoration(
                      hoverColor: Color(0xFFe9dee6),
                      labelText: 'Enter OTP',
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
              ),

              SizedBox(height: screenHeight * 0.03),

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
              SizedBox(height: screenHeight * 0.04),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Account(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
