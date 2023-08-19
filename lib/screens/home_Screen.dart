import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/settingsScreen.dart';

import '../models/product.dart';
import '../reusable_widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ...listOfProducts.map((product) => ProductCard(product: product)).toList(),
            ],
          ),
        )


      //Center(child: ProductCard( product:  product1,)),
    );
  }
}
