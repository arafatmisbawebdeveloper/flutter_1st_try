import 'package:flutter/material.dart';

class ProductSetState extends StatefulWidget {
  @override
  _ProductDetails createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductSetState> {
  int quantity = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade50,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, "/main");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Center(
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/PamirCola.png',
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 40),

              // Rating and Share Button
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20),
                  SizedBox(width: 10),
                  Text('4.9 (134)',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  Spacer(),
                  Icon(Icons.share, color: Colors.black),
                ],
              ),
              SizedBox(height: 20),

              // Price and Discount
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '25%',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '\$50.0',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '\$25.0',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Product Name and Stock
              Text(
                'Healthy & Halal Drinks',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Status: In Stock',
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
              SizedBox(height: 10),

              // Description
              Text(
                'Description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                'This is a tasty colddrinks. ' * 5,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 20),

              // Quantity Selector and Add to Cart
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(Icons.remove,
                                color: Colors.white, size: 20),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '$quantity',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:
                                Icon(Icons.add, color: Colors.white, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {
                      // Add to cart logic
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
