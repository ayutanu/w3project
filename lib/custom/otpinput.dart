import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            width: 53,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFD0BACA),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF281B48)),
              ),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: '',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12),
                  hintText: '',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
                style: const TextStyle(color: Color(0xFF281B48)),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.isEmpty && index > 0) {
                    // Move to the previous field if empty
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
