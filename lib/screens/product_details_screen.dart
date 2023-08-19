import 'package:flutter/material.dart';
import 'package:untitled1/models/product.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black, onPressed: (){
          Navigator.of(context).pop();
        },),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 300,
                child: Image.asset(widget.product.imageUrl),
              ),
            ),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.orange.shade800,
                  height: 30,
                  width: 100,
                  child: Center(
                    child: Text("\$${widget.product.price}",
                      style: const TextStyle(
                        color: Colors.white,
                            fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_rounded, color: Colors.orange.shade800,),

                      const SizedBox(width: 10,),
                      Text("${widget.product.rating}"),
                    ],
                  ),



                ),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: IconButton(
                    icon: Icon(isSaved ? Icons.star : Icons.star_outline, color: Colors.orange.shade800,),
                    onPressed: (){

                      setState(() {
                        isSaved = ! isSaved;
                      });
                    },
                  ),
                ),
              ],
            ),


            const SizedBox(height: 20,),



            Text(widget.product.name,
              style: const TextStyle(
                  fontSize: 50
              ),),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(thickness: 2,),
            ),

            Container(
              child: ExpansionTile(
                leading: Icon(Icons.edit),

                title: Text("Description"),
                subtitle: Text("this is s subtitle"),

                trailing: Icon(Icons.delete),

                children: [
                  Text("This is an awesome bag \n"
                      "بحيب منهعا لبيتي والله"
                      "")

                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(thickness: 2,),
            ),
          ],
        ),
      ),
    );
  }
}
