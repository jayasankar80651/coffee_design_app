import 'package:flutter/material.dart';

class NewDesign extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  NewDesign({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 9, 9),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 154, 212, 156),
                    radius: 25,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(Icons.favorite, color: Colors.red, size: 40),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Drizzled with Caramel",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 20),
                Icon(Icons.star, color: Colors.yellow),
                Text(
                  "4.5",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "A single esprsso shot poured into hot foamy milk,\nwith the surface topped with mildly sweetened\ncocoa powder and drizzled with scrumptious\ncaramel syrup....Read More",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "Choice of Milk",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 250, 255, 199),
                  ),
                  child: Center(child: Text("Oat Milk")),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: BoxBorder.all(
                      color: const Color.fromARGB(255, 250, 255, 199),
                    ),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "Soy Milk",
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 255, 199),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: BoxBorder.all(
                        color: const Color.fromARGB(255, 250, 255, 199),
                      ),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Almond Milk",
                        style: TextStyle(
                          color: Color.fromARGB(255, 250, 255, 199),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [Text("Price", style: TextStyle(color: Colors.white))],
            ),
            Row(
              children: [
                Icon(
                  Icons.currency_rupee,
                  color: const Color.fromARGB(255, 250, 255, 199),
                  size: 30,
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 250, 255, 199),
                    fontSize: 30,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 250, 255, 199),
                    ),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
