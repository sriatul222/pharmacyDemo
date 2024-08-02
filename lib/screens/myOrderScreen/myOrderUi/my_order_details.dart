import 'package:flutter/material.dart';

class MyOrderDetails extends StatelessWidget {
  const MyOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15,right: 15),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order number and arrow
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order: #123456',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Roboto',
                  fontSize: 13,
                  color: Colors.black87,
                ),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          const Divider(),
          // Add a divider between the order number and details
          const SizedBox(height: 8.0),
          // Order details
          Row(
            children: [
              // Product image
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9F0),
                  // Light background color for the image
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/images/orderImage.png',
                  // Replace with actual image URL
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 8.0),
              // Order information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Delivered',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        'on 21 Apr, 24',
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Text(
                      '+5 items',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
