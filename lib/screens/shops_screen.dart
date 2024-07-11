import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda/components/cricket_deals_tab.dart';
import 'package:food_panda/components/popular_tab.dart';
import 'package:food_panda/data/data.dart';

class ShopsScreen extends StatefulWidget {
  const ShopsScreen({super.key});

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: Data.categories.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFFFF2B85),
              ),
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                Text(
                  '15-30 min',
                  style: TextStyle(color: Color(0xFFFF2B85), fontSize: 14),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color(0xFFFF2B85),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_outlined,
                  color: Color(0xFFFF2B85),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFFFF2B85),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(6),
                  child: Row(children: <Widget>[
                    CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage('assets/subway_logo.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Subway",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      "1.5km away | Rs. 99.00 Delivery | Rs. 249.00 Minimum Service fee applied",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "More info",
                    style: TextStyle(
                        color: Color(0xFFFF2B85), fontWeight: FontWeight.bold),
                  )
                ]),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Icon(
                          Icons.star_outline_outlined,
                          color: Color(0xFFFF2B85),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "3.9",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "1,000+ Ratings",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ]),
                      Text(
                        "See reviews",
                        style: TextStyle(
                            color: Color(0xFFFF2B85),
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Icon(
                          CupertinoIcons.clock,
                          color: Color(0xFFFF2B85),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Delivery: 15-30 min",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                      Text(
                        "Change",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 16,
                ),
                Row(children: <Widget>[
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    "assets/voucher_panda.png",
                    width: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Available deals",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF2B85).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(children: <Widget>[
                    Row(children: <Widget>[
                      Image.asset(
                        "assets/percentage_icon.png",
                        width: 20,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "Rs. 320 off",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF2B85)),
                      )
                    ]),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Min order Rs. 320. Valid for Selected  items Auto-applied",
                      softWrap: true,
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: const Color(0xFFFF2B85),
                    indicatorColor: const Color(0xFFFF2B85),
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.black,
                    indicatorWeight: 3,
                    tabs: Data.categories
                        .map(
                          (e) => Tab(text: e),
                        )
                        .toList()),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: [
                      const PopularTab(),
                      const CricketDealsTab(),
                      const Text("Pepsi"),
                      const Text("All")
                    ][_tabController.index])
              ]),
            ),
          ),
        ));
  }
}
