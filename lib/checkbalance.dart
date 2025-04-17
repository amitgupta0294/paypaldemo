import 'package:flutter/material.dart';

class BalanceCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Check Balance', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Colors.purple[50],
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(
              Icons.account_balance_wallet,
              size: 100,
              color: Colors.deepPurple.shade100,
            ),
            SizedBox(height: 20),
            Text("Check Balance for Account 12** **** **** **26",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50), // Full width with fixed height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Optional: rounded corners
                  ),
                ),
                child: const Text('Proceed'),
              ),
            )
          ],
        ),
      ),
    );
  }
}