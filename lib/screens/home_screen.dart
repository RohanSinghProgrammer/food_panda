import 'package:flutter/material.dart';
import 'package:food_panda/components/carousel.dart';
import 'package:food_panda/components/staggered_grid_posters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 130,
            backgroundColor: const Color(0xFFFF2B85),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                )),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "your location or address will be here ...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.white,
                    size: 30,
                  )),
              Stack(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
                Positioned(
                    bottom: 4,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Center(
                        child: Text(
                          "1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFFF2B85),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ])
            ],
            flexibleSpace: FlexibleSpaceBar(
                background: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 2.5, bottom: 0),
                    margin: const EdgeInsets.only(
                        top: 30, bottom: 10, left: 12, right: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search for shops and restaurants",
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 18),
                              prefixIcon: Icon(Icons.search,
                                  color: Colors.grey[400], size: 30),
                              border: InputBorder.none)),
                    ),
                  )
                ])),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
                padding: EdgeInsets.all(20), child: StaggeredGridPoster()),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 24, top: 14),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 6, left: 24),
                    child: Text("Free Delivery",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Carousel()
                ],
              ),
            )
          ]))
        ]));
  }
}
