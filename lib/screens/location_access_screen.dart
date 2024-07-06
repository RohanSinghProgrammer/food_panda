import 'package:flutter/material.dart';
import 'package:food_panda/screens/auth_screen.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/foodpanda_location.png'),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "Allow location access on the next screen for:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFFF2B85).withOpacity(0.15),
                  ),
                  child: const Icon(
                    Icons.delivery_dining_outlined,
                    size: 32,
                    color: Color(0xFFFF2B85),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                  child: Text(
                    "Finding the best restaurants & foods near you",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFFF2B85).withOpacity(0.15),
                  ),
                  child: const Icon(
                    Icons.store_outlined,
                    size: 32,
                    color: Color(0xFFFF2B85),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                  child: Text(
                    "Faster and more accurate delivery",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                )
              ],
            )
          ]),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuthScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF2B85),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16)),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ],
          )
        ],
      ),
    )));
  }
}
