import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_panda/data/data.dart';
import 'package:food_panda/screens/product_screen.dart';

class CricketDealsTab extends StatelessWidget {
  const CricketDealsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Cricket Deals",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text("Get cricket special deals on live match"),
            const SizedBox(
              height: 12,
            ),
            StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: Data.popularItems.map((item) {
                  return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductScreen(),
                              ));
                        },
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 4,
                                  blurRadius: 6,
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  item['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.3),
                                      Colors.transparent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  )),
                                  child: Text(
                                    item['title']!,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 12,
                                  right: 8,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Row(
                                      children: <Widget>[
                                        if (item['oldPrice'] != null)
                                          Text(
                                            item['oldPrice']!,
                                            style: const TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.grey),
                                          ),
                                        if (item['oldPrice'] != null)
                                          const SizedBox(
                                            width: 12,
                                          ),
                                        Text(
                                          item['price']!,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ));
                }).toList() as List<Widget>)
          ]),
    );
  }
}
