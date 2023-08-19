import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled1/screens/product_details_screen.dart';

import '../models/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
   const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailsScreen(product: widget.product)));
      },
      child: Card(
        color: Colors.white,
        child: Container(
          width: 175,
          height: 240,
          child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 100,
                    child: Image.asset(widget.product.imageUrl),
                  ),
                ),

                const SizedBox(height: 10,),

                Text(widget.product.name),
                const SizedBox(height: 10,),

            RatingBar.builder(
              itemSize: 20,
              initialRating: widget.product.rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${widget.product.price}"),

                    IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_rounded))
                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
