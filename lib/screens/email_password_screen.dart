import 'package:flutter/material.dart';
import 'package:food_panda/screens/fill_account_info.dart';
import 'package:food_panda/screens/verify_otp_screen.dart';
import 'package:food_panda/widgets/custom_input_field.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    void navigateToFillDetails() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FillAccountInfo(),
          ));
    }

    void navigateToForgetPassword() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const VerifyOtp(),
          ));
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
                        "Log in with your email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                          " Login with your password to rs7289579@gmail.com. or get a login link via email"),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomInputField(
                        label: "Password",
                        controller: emailController,
                        obscureText: true,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: InkWell(
                            onTap: navigateToForgetPassword,
                            child: const Text(
                              "I forgot my password?",
                              style: TextStyle(
                                  color: Color(0xFFFF2B85),
                                  fontWeight: FontWeight.bold),
                            )),
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
                          onPressed: navigateToFillDetails,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF2B85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Login with password",
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
                          onPressed: navigateToFillDetails,
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1.0, color: Color(0xFFFF2B85)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Send me a login link",
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
