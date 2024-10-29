import 'package:coffeeshopdribble/utils/coffeetile.dart';
import 'package:coffeeshopdribble/utils/coffeetype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    ['Cappuccino', false],
    ['Latte', false],
    ['Black', false],
    ['Mocha', false],
  ];

  void coffeeSelected(index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.coffee_maker_outlined,
            size: 70,
          )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(
                "Buy me a coffee",
                style: GoogleFonts.zenKurenaido(fontSize: 20),
              ),
            ),
          )
        ]),
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ]),
      body: Column(
        children: [
          //find best coffee
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Find the best coffee for you!",
              style: GoogleFonts.zenKurenaido(fontSize: 45),
            ),
          ),

          SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Find your best coffee..",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.orange.shade500,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),

          SizedBox(height: 25),

          //TEXT BAR
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeType.length,
                    itemBuilder: (context, index) {
                      return CoffeeType(
                          coffeetype: coffeeType[index][0],
                          isSelected: coffeeType[index][1],
                          onTap: () {
                            coffeeSelected(index);
                          });
                    })),
          ),

          //coffee tiles list

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeeTile(
                      imageDesc: "With almond milk",
                      imagePath: 'lib/assets/images/cof.jpg',
                      imageName: "Latte"),
                  CoffeeTile(
                      imageDesc: "with a lot of nuts",
                      imagePath: 'lib/assets/images/download.jpg',
                      imageName: "NutFe"),
                  CoffeeTile(
                      imageDesc: "with the caffeine goodness",
                      imagePath: 'lib/assets/images/white cofe.jpg',
                      imageName: "CaffeineX")
                ],
              ),
            ),
          )

          //bottom nav bar
        ],
      ),
    );
  }
}
