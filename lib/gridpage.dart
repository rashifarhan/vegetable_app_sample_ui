import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VegGrid(),
  ));
}

class VegGrid extends StatelessWidget {
  var images = [
    const AssetImage("assets/images/vegetable.jpg"),
    const AssetImage("assets/images/fruits.jpg"),
    const AssetImage("assets/images/exotic.jpg"),
    const AssetImage("assets/images/fresh cut.jpg"),
    const AssetImage("assets/images/lettuce.jpg"),
    const AssetImage("assets/images/spices.jpg"),
  ];
  var Texts = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors"
  ];

  VegGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 2, crossAxisSpacing: 1, crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: images[index], fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                Texts[index],
                style: const TextStyle(fontWeight: FontWeight.w400),
              )
            ],
          ),
        );
      },
      itemCount: images.length,
    );
  }
}
