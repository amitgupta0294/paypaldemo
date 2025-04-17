import 'package:flutter/material.dart';

class GiftsRewardsPage extends StatelessWidget {
  final List<Map<String, dynamic>> rewards = [
    {'name': 'Gift Card', 'value': 10, 'image': 'assets/gift_card.png'},
    {'name': 'Cashback', 'value': 25, 'image': 'assets/cashback.png'},
    {'name': 'Voucher', 'value': 15, 'image': 'assets/voucher.png'},
    {'name': 'Discount', 'value': 5, 'image': 'assets/discount.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Gifts & Rewards', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: rewards.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   rewards[index]['image'],
                  //   height: 60,
                  //   width: 60,
                  //   fit: BoxFit.cover,
                  // ),
                  SizedBox(height: 10),
                  Text(
                    rewards[index]['name'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${rewards[index]['value'].toString()}',
                    style: TextStyle(fontSize: 14, color: Colors.deepPurple),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      minimumSize: Size(100, 30),
                    ),
                    onPressed: () {
                      // Add redeem logic here
                    },
                    child: Text('Redeem', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}