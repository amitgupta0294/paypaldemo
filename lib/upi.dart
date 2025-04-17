import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Upi extends StatefulWidget {
  const Upi({super.key});

  @override
  State<Upi> createState() => _UpiState();
}

class _UpiState extends State<Upi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPI Pay', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple, centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ),


      body: Container(
        padding: EdgeInsets.only(top: 20.0,left: 10, right: 10, bottom: 10),
        child: ListView(
          children: [

            IconButton(onPressed: () {}, icon: Icon(Icons.qr_code, size: 200.0, color: Colors.deepPurple.shade200,)),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter UPI ID',
                hintText: 'UPI ID',
              ),
              onChanged: (value) {
                print('Text changed: $value');
              },
            ),

            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter the amount to be transfered',
                  hintText: 'Amount (max 10000)',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  print('Text changed: $value');
                },
              ),
            ),

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
                child: const Text('Send'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
