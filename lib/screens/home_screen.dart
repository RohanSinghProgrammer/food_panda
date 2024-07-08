import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_panda/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          hintStyle:
                              TextStyle(color: Colors.grey[400], fontSize: 18),
                          prefixIcon: Icon(Icons.search,
                              color: Colors.grey[400], size: 30),
                          border: InputBorder.none)),
                ),
              )
            ])),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.all(20),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: <Widget>[
                          Text(
                            Data.items[0]['title'].toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(Data.items[0]['subtitle'].toString())
                        ]),
                        Image.asset(
                          Data.items[0]['imagePath'].toString(),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.05,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: <Widget>[
                          Text(
                            Data.items[1]['title'].toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(Data.items[1]['subtitle'].toString())
                        ]),
                        Image.asset(
                          Data.items[1]['imagePath'].toString(),
                          fit: BoxFit.cover,
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.05,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                Data.items[2]['title'].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(Data.items[2]['subtitle'].toString())
                            ]),
                        Image.asset(
                          Data.items[2]['imagePath'].toString(),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.05,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                Data.items[3]['title'].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(Data.items[3]['subtitle'].toString())
                            ]),
                        Image.asset(
                          Data.items[3]['imagePath'].toString(),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.05,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                Data.items[4]['title'].toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(Data.items[4]['subtitle'].toString())
                            ]),
                        Image.asset(
                          Data.items[4]['imagePath'].toString(),
                          fit: BoxFit.cover,
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]))
    ]));
  }
}
