import 'package:coffee_design/desing_2.dart';
import'package:flutter/material.dart';
class CoffeeDesign extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(backgroundColor: Colors.black,
      body:Column(
        children: [
          Container(
            height: 400,
            width:550,
            decoration: BoxDecoration(image:DecorationImage(
              image:AssetImage("assets/images/coffedelight.jpeg") ),
            ),
          ),
          Positioned(
            child:  Text("Fall in love with \nCoffee in Blissful\n      Delight!",
            style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 10,),
          Positioned(child: Text("welcome to our cozy coffee corner,where\n      every cup is a delightful for you.",
          style: TextStyle(color: Colors.grey),)),
          SizedBox(height: 20,),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> NewPage()));
          },
          child: Container(
           height: 50,
           width: 270,
           decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color:  Colors.orange),
           child: Center(child: Text("Get Started",style: TextStyle(fontSize: 15,color:Colors.white),)),
          ),
        )
        ],
      )
    );
  }
}