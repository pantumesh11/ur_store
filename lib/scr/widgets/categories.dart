import 'package:flutter/material.dart';

import 'package:ur_store/scr/commons.dart';
import 'package:ur_store/scr/models/category.dart';
import 'package:ur_store/scr/widgets/custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Chocolates", image: "milk.png"),
  Category(name: "Ice Cream", image: "ice2.png"),
  Category(name: "Snickers", image: "UIHere.png"),
  Category(name: "Biscuits", image: "oreo.jpeg"),
  Category(name: "Smoothie", image: "smoothie1.png"),
  Category(name: "Candy", image: "candy2.jpeg"),
  Category(name: "Beers", image: "beer2.png"),

];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return             Container(
      height: 95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFF575A3),
                            offset: Offset(4, 6),
                            blurRadius: 20,
                          )
                        ],
                      ),
                      child: Padding(padding: EdgeInsets.all(4),
                        child: Image.asset("images/${categoriesList[index].image}", width: 50,),)
                  ),
                  SizedBox(height: 5,),
                  CustomText(text: categoriesList[index].name, size: 14, color: black),
                ],
              ),
            );
          }
      ),
    );
  }
}
