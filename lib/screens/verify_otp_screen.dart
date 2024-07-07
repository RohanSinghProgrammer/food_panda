import 'package:flutter/material.dart';
import 'package:food_panda/screens/fill_account_info.dart';
import 'package:food_panda/widgets/custom_input_field.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    void verifyEmail() {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const FillAccountInfo(),
      //     ));
    }

    void resendCode() {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const FillAccountInfo(),
      //     ));
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
                      CustomInputField(
                        label: "Password",
                        controller: emailController,
                        obscureText: true,
                      ),
                    ]),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: verifyEmail,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF2B85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Verify email",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
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
