import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_ui3/gridpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: const VegUi(),
  ));
}

class VegUi extends StatefulWidget {
  const VegUi({super.key});

  @override
  State<VegUi> createState() => _VegUiState();
}

class _VegUiState extends State<VegUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: double.maxFinite,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: const [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Kochi",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )
        ],
        title: const Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Container(
              height: 33,
              color: Colors.white,
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search for Vegetables,fruits",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.green),
                        color: const Color(0xffd4f8d4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const Text(
                      "VEGETABLES",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.green),
                        color: const Color(0xffd4f8d4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const Text("FRUITS",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.green),
                        color: const Color(0xffd4f8d4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const Text("EXOTIC",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.green),
                        color: const Color(0xffd4f8d4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const Text("FRESH CUTS",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                        "https://assets.aboutamazon.com/4b/89/9371cec440f79aa6e2d438f6a9f8/welcome-sign-0901-blog-size.jpg",
                      ))),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://c0.wallpaperflare.com/preview/350/716/16/bunch-of-vegetables.jpg"))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://img.magicpin.com/fresh_produce.jpg"))),
                    ),
                  ],
                  options: CarouselOptions(
                      viewportFraction: 2,
                      height: 300,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.punch_clock,
                            color: Colors.green,
                          ),
                          Text(
                            "30 MINS POLICY",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.phone_iphone,
                            color: Colors.green,
                          ),
                          Text("TRACIABILITY",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.man,
                            color: Colors.green,
                          ),
                          Text("LOCAL SOURCING",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Shop By Category",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            VegGrid()
          ]))
        ],
      ),
    );
  }
}
