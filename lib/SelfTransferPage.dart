import 'package:flutter/material.dart';

class SelfTransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Self Transfer', style: TextStyle(color: Colors.white),),
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
            Icon(
              Icons.swap_horiz,
              size: 100,
              color: Colors.deepPurple.shade100,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'From Account',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'To Account',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount to Transfer',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.number,
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
                child: const Text('Transfer'),
              ),
            )
          ],
        ),
      ),
    );
  }
}