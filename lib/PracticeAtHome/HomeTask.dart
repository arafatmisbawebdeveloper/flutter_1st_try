import 'package:flutter/material.dart';

class Hometask extends StatelessWidget {
  const Hometask({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categoryImages = [
      'assets/images/bag.jpg',
      'assets/images/food.jpg',
      'assets/images/media.jpg',
      'assets/images/sports.jpg',
      'assets/images/prosecond.jpg',
      'assets/images/health.jpg',
      'assets/images/Ami.jpg',
      'assets/images/book.jpg',
    ];
    final List<String> ProductImages = [
      'assets/images/red.jpg',
      'assets/images/black.jpg',
      'assets/images/gray.jpg',
      'assets/images/greenshoe.jpg',
      'assets/images/bag.jpg',
      'assets/images/book.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Home"),
            CircleAvatar(
              backgroundColor: Colors.grey.shade400,
              child: Icon(Icons.person),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      categoryImages.length,
                      (index) => Padding(
                            padding: EdgeInsets.all(10),
                            child:
                                CategoryCard(imagePath: categoryImages[index]),
                          ))),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    print("View all Clicked");
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.75),
                itemCount: ProductImages.length,
                itemBuilder: (context, index) {
                  return ProductCart(
                    imagePath: ProductImages[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
        ],
      ),
    );
  }
}

class ProductCart extends StatelessWidget {
  final String imagePath;
  ProductCart({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath), // Replace with your image
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Green Nike Air Shoes',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('3.9',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    Icon(Icons.star, color: Colors.yellow, size: 14),
                  ],
                ),
                SizedBox(height: 5),
                Text('\$2500.0',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  // Add your functionality here
                  print('Add button clicked');
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagePath;
  CategoryCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade400,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
