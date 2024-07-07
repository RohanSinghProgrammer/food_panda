import 'package:flutter/material.dart';
import 'package:food_panda/widgets/custom_input_field.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  @override
  Widget build(BuildContext context) {

    void resendCode() {
      // TODO: Resend Verify Code Function
    }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFFFF2B85),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/login_icon.png",
                        scale: 2.5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Verify your email address to get started",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                          " This help us to mitigate fraud and keep your personal data safe"),
                      const SizedBox(
                        height: 16,
                      ),
                      OtpTextField(
                        fieldWidth: 80,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        numberOfFields: 4,
                        focusedBorderColor: const Color(0xFFFF2B85),
                        showFieldAsBox: false,
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Verification Code"),
                                  content:
                                      Text('Code entered is $verificationCode'),
                                );
                              });
                        }, // end onSubmit
                      ),
                    ]),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: resendCode,
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1.0, color: Color(0xFFFF2B85)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Resend verification code",
                              style: TextStyle(
                                color: Color(0xFFFF2B85),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
