import 'package:flutter/material.dart';
import 'package:untitled/StockPurchasePage.dart';

class StocksListPage extends StatelessWidget {
  final List<Map<String, dynamic>> stocks = [
    {'name': 'Apple', 'price': 175.30},
    {'name': 'Microsoft', 'price': 298.45},
    {'name': 'Amazon', 'price': 180.75},
    {'name': 'Google', 'price': 2750.10},
    {'name': 'Tesla', 'price': 720.90},
    {'name': 'Nvidia', 'price': 850.25},
    {'name': 'Meta', 'price': 490.60},
    {'name': 'Netflix', 'price': 620.15},
    {'name': 'Adobe', 'price': 510.80},
    {'name': 'Intel', 'price': 45.30},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Stock Prices', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: stocks.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StockPurchasePage(
                      stockName: stocks[index]['name'],
                      stockPrice: stocks[index]['price'],
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left:10, right: 10, top: 20, bottom: 10),
                child: Row(
                  children: [
                    Text(stocks[index]['name'], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text('\$${stocks[index]['price'].toStringAsFixed(2)}',  style: TextStyle(fontSize: 15.0,
                        color: Colors.green, fontWeight: FontWeight.bold)),
                    SizedBox(width: 10,),
                    Icon(Icons.trending_up, color: Colors.green,)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}