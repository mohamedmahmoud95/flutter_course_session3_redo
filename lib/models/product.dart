class Product {
  String name;
  double price;
  double rating;
  String description;
  String imageUrl;

  Product({
    required this.rating,
    required this.price,
    required this.name,
    required this.description,
    required this.imageUrl,
});
}

Product product1 = Product(rating: 4.5, price: 400, name: "bag1",  description: "Awesome bag 1", imageUrl: "assets/bagImage.jpg");
Product product2 = Product(rating: 4.5, price: 600, name: "bag2",  description: "Awesome bag 2", imageUrl: "assets/bagImage2.jpg");
Product product3 = Product(rating: 4.5, price: 500, name: "bag3",  description: "Awesome bag 3", imageUrl: "assets/bagImage3.jpg");
Product product4 = Product(rating: 4.5, price: 100, name: "bag4",  description: "Awesome bag 4", imageUrl: "assets/bagImage4.jpg");
Product product5 = Product(rating: 4.5, price: 20, name: "bag5",  description: "Awesome bag 5", imageUrl: "assets/bagImage5.jpg");
Product product6 = Product(rating: 4.5, price: 750, name: "bag6",  description: "Awesome bag 6", imageUrl: "assets/bagImage6.jpg");

List<Product> listOfProducts = [product2, product3, product1, product4, product5, product6];
