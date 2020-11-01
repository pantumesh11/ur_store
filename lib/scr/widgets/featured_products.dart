import 'package:flutter/material.dart';

import 'package:ur_store/scr/commons.dart';
import 'package:ur_store/scr/models/products.dart';
import 'package:ur_store/scr/widgets/custom_text.dart';

List<Product> productsList = [
  Product(name: "Dairy Milk", price: 5.99, rating: 4.2, vendor: "GoodSweet", wishList: true, image: "milk.png"),
  Product(name: "Candy", price: 1.99, rating: 4.5, vendor: "CandyLand", wishList: false, image: "candy2.jpeg"),
  Product(name: "Ice Cream", price: 2.99, rating: 4.8, vendor: "DreamyCold", wishList: true, image: "ice2.png")
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index){
            return Padding(padding: EdgeInsets.all(8),
              child: Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: red,
                          offset: Offset(15, 5),
                          blurRadius: 30
                      )
                    ]
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                        "images/${productsList[index].image}",
                        height: 140,
                        width: 140
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: grey,
                                      offset: Offset(1, 1),
                                      blurRadius: 4
                                  )
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: productsList[index].wishList ? Icon(
                                Icons.favorite, color: red, size: 18,) :
                              Icon(Icons.favorite_border, color: red, size: 18,),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                color: grey,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(text: "\$${productsList[index].price}", weight: FontWeight.bold,),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    )
    ;
  }
}
