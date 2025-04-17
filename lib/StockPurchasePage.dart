import 'package:flutter/material.dart';

class StockPurchasePage extends StatefulWidget {
  final String stockName;
  final double stockPrice;

  StockPurchasePage({required this.stockName, required this.stockPrice});

  @override
  _StockPurchasePageState createState() => _StockPurchasePageState();
}

class _StockPurchasePageState extends State<StockPurchasePage> {
  int quantity = 0;
  double totalCost = 0.0;

  void calculateCost() {
    setState(() {
      totalCost = quantity * widget.stockPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Purchase ${widget.stockName}', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Stock Price: \$${widget.stockPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (quantity > 0) {
                      setState(() {
                        quantity--;
                        calculateCost();
                      });
                    }
                  },
                ),
                Text('$quantity', style: TextStyle(fontSize: 20)),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                      calculateCost();
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Total Cost: \$${totalCost.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50), // Full width with fixed height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Optional: rounded corners
                ),
              ),
              onPressed: () {
                // Add buy logic here
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Confirm Purchase'),
                    content: Text('Buy $quantity shares of ${widget.stockName} for \$${totalCost.toStringAsFixed(2)}?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Purchase of ${widget.stockName} successful!')),
                          );
                        },
                        child: Text('Confirm'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}