import 'package:flutter/material.dart';

class UtilityBill extends StatelessWidget {
  const UtilityBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Utility Bills', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [

            Icon(Icons.electric_bolt, color: Colors.deepPurple.shade100, size: 100,),
            SizedBox(height: 20),

            Text("Your last month electricity bill is INR 1000. Press the button below to proceed.",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                child: const Text('Proceed to Pay INR 1000'),
              ),
            )
          ],
        ),
      )
    );
  }
}
