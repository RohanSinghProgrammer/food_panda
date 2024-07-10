import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:food_panda/data/data.dart';
import 'package:food_panda/screens/shops_screen.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    void _navigateToOrders() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ShopsScreen(),
          ));
    }

    return ExpandableCarousel(
      options: CarouselOptions(
        showIndicator: false,
        slideIndicator: const CircularSlideIndicator(),
        autoPlay: true,
      ),
      items: Data.restaurants.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: _navigateToOrders,
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset(i['imagePath'],
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover),
                            Positioned(
                                top: 14,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (i['discount'] != '')
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFF2B85),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Text(i['discount'],
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    if (i['discount'] != '')
                                      const SizedBox(
                                        height: 8,
                                      ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 8),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFFF2B85),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: const Text('Free Delivery',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10.0, top: 10.0, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  i['name'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.yellow),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(i['rating'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text("(${i['reviews']})")
                                  ],
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("${i['minOrder']} - ${i['cuisine']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 10, top: 4),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.clock,
                                size: 20,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(i['time']),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.electric_scooter_outlined,
                                color: Color(0xFFFF2B85),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Free Delivery',
                                style: TextStyle(
                                    color: Color(0xFFFF2B85),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ])),
            );
          },
        );
      }).toList(),
    );
  }
}
