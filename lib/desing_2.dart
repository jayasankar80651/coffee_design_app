import 'package:coffee_design/database.dart';
import 'package:coffee_design/design_3.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 34, 31),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("deja ", style: TextStyle(color: Colors.white, fontSize: 30)),
            Row(
              children: [
                Text(
                  "Brew",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/avathar1.jpeg"),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      "Browse your favourite coffee...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: DataBase.CoffeeDetails.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NewDesign(
                                    image:
                                        DataBase.CoffeeDetails[index]["image"],
                                    name: DataBase.CoffeeDetails[index]['Name'],
                                    price:
                                        DataBase.CoffeeDetails[index]["price"],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 60, 57, 56),
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    DataBase.CoffeeDetails[index]["image"],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),

                          Text(
                            DataBase.CoffeeDetails[index]["Name"],
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 104, 88, 83),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    DataBase.CoffeeDetails[index]["price"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    height: 50,
                                    child: FloatingActionButton(
                                      onPressed: () {},
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
