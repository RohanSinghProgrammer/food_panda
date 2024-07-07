import 'package:flutter/material.dart';
import 'package:food_panda/screens/home_screen.dart';
import 'package:food_panda/widgets/custom_input_field.dart';

class FillAccountInfo extends StatelessWidget {
  const FillAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void navigateToHomeScreen() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFFFF2B85),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: navigateToHomeScreen,
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/profile_icon.png",
                        scale: 3,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Let's get you started!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                          " First, let's create your foodpanda account with rs7289579@gmail.com"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 30,
                              child: CustomInputField(
                                controller: firstNameController,
                                label: "First Name",
                              ),
                            ),
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 30,
                              child: CustomInputField(
                                controller: lastNameController,
                                label: "Last Name",
                              ),
                            )
                          ]),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomInputField(
                        label: "Password",
                        controller: passwordController,
                        obscureText: true,
                      )
                    ]),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: navigateToHomeScreen,
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
