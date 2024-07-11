import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(
                'assets/cricket_deal_2.jpg',
                height: 340,
                width: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
              Positioned(
                  top: 24,
                  left: 8,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xFFFF2B85),
                      )))
            ],
          ),
          Container(
              margin: const EdgeInsets.all(16),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cricket Deal 2',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 12,
                          ),
                          Text('6 inches sub & 345 ml drink',
                              style: TextStyle(
                                color: Colors.grey,
                              ))
                        ]),
                    Column(children: [
                      Text('Rs 869.00',
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough)),
                      SizedBox(
                        height: 6,
                      ),
                      Text('Rs. 549.00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ))
                    ])
                  ])),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xFFFF2B85).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black87,
                )),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          "Choose Your Bread",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color(0xFFFF2B85).withOpacity(0.9),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                )),
                            child: const Text(
                              "Required",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ]),
                  const Text(
                    "Select One",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFFF2B85)),
                  ),
                  RadioListTile(
                    value: "Italian",
                    title: const Text("Italian",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    groupValue: "bread",
                    secondary: const Text(
                      "Free",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    onChanged: (value) {},
                    selectedTileColor: const Color(0xFFFF2B85),
                  ),
                  RadioListTile(
                    value: "Wheat",
                    title: const Text("Wheat",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    groupValue: "bread",
                    secondary: const Text(
                      "Free",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    onChanged: (value) {},
                    selectedTileColor: const Color(0xFFFF2B85),
                  ),
                  RadioListTile(
                    value: "Sesame",
                    title: const Text("Sesame",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    groupValue: "bread",
                    secondary: const Text(
                      "Free",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    onChanged: (value) {},
                    selectedTileColor: const Color(0xFFFF2B85),
                  ),
                  RadioListTile(
                    value: "Honey Oat",
                    title: const Text("Honey Oat",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    groupValue: "bread",
                    secondary: const Text(
                      "Free",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    onChanged: (value) {},
                    selectedTileColor: const Color(0xFFFF2B85),
                  )
                ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Special instructions",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Please let us know if you are allergic to anything or if we need to avoid anything",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "e.g. no mayo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF2B85),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 6,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text("0/500"),
                )
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              )),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.8)),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: const Color(0xFFFF2B85)),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ]),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF2B85),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                )
              ])),
    );
  }
}
