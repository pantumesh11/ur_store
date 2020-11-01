import 'package:flutter/material.dart';
import 'package:ur_store/scr/commons.dart';
import 'package:ur_store/scr/widgets/categories.dart';
import 'package:ur_store/scr/widgets/custom_text.dart';
import 'package:ur_store/scr/widgets/featured_products.dart';
import 'package:ur_store/scr/widgets/small_floating_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What would you like to order?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Padding(
                padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey,
                      offset: Offset(1,1),
                      blurRadius: 4
                    )
                  ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: red),
                  title: TextField(
                    decoration: InputDecoration(
                    hintText: "Search your wish",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: red,),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Featured",size: 20, color: grey,
              ),
            ),

            Featured(),
            Padding(
                padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Popular", size: 20, color: grey),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/silk.jpeg")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.star,color: Colors.yellow[900], size: 20),
                                ),
                              Text("4.5"),
                            ],
                          ),
                        ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,

                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.025),
                          ]
                        )
                      ),
                    ),
                  ),
                  ),
                  Positioned.fill(child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: "Dairy Milk Silk \n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: white),),
                          TextSpan(text: "by:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: white),),
                          TextSpan(text: "Good Sweets", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: white),),
                        ],
                        style: TextStyle(color: black),
                        ),
                        ),
                        ),
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: "\$4.99 \n", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300, color: white),),
                        ],
                        style: TextStyle(color: black),
                        ),),
                        ),
                      ],
                    ),
                  )),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite, color: red,),
                        ),

                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ],
      ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.home, color: Color(0xFFEF7532)),
                  SizedBox(height: 2,),
                  CustomText(text: "Home",size: 12,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.my_location, color: Color(0xFFEF7532)),
                  SizedBox(height: 2,),
                  CustomText(text: "Near by",size: 12,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.search, color: Color(0xFFEF7532)),
                  SizedBox(height: 2,),
                  CustomText(text: "Search",size: 12,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.shopping_cart, color: Color(0xFFEF7532)),
                  SizedBox(height: 2,),
                  CustomText(text: "Cart",size: 12,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.person, color: Color(0xFFEF7532)),
                  SizedBox(height: 2,),
                  CustomText(text: "Account",size: 12,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
