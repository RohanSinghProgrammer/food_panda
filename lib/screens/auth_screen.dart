import 'package:flutter/material.dart';
import 'package:food_panda/screens/email_auth_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFF2B85),
        body: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                      padding: EdgeInsets.only(left: 20, top: 40),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        weight: 80.0,
                      )),
                )),
            const SizedBox(
              height: 44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/auth_back.png',
                  height: 300,
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign up or Log in",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.grey[800]),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text("Select your preferred method to continue"),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(children: [
                    Expanded(
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/google_icon.webp",
                                      height: 28,
                                    ),
                                    const Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 24),
                                            child: Text(
                                              "Continue with Google",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ))))
                  ]),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(children: [
                    Expanded(
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 7),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blue),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/facebook_icon.png",
                                      height: 42,
                                    ),
                                    const Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 24),
                                            child: Text(
                                              "Continue with Facebook",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )))),
                  ]),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(children: <Widget>[
                      const Expanded(child: Divider()),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          child: const Text("or")),
                      const Expanded(child: Divider()),
                    ]),
                  ),
                  Row(children: [
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EmailAuthScreen()),
                              );
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xFFFF2B85), width: 1),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.mail_outline,
                                      size: 28,
                                      color: Color(0xFFFF2B85),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 24),
                                            child: Text(
                                              "Continue with Email",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFFF2B85)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ))))
                  ]),
                ],
              ),
            ))
          ],
        ));
  }
}
