import 'package:flutter/material.dart';
import 'package:food_panda/widgets/custom_input_field.dart';

class EmailAuthScreen extends StatelessWidget {
  const EmailAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFFFF2B85),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Continue",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                "assets/email_icon.png",
                scale: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What's your email?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(" We'll check if you have an account"),
              const SizedBox(
                height: 16,
              ),
              CustomInputField(
                label: "Email",
                controller: emailController,
              )
            ]),
            Column(
              children: [
                const Divider(),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF2B85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
