import 'package:flutter/material.dart';

class InsurancePurchasePage extends StatefulWidget {
  @override
  _InsurancePurchasePageState createState() => _InsurancePurchasePageState();
}

class _InsurancePurchasePageState extends State<InsurancePurchasePage> {
  String insuranceType = 'Health';
  double premium = 50.0;
  bool previewShown = false;

  void _showPreview() {
    setState(() {
      previewShown = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Buy Insurance', style: TextStyle(color: Colors.white),),
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
              Icons.shield_outlined,
              size: 100,
              color: Colors.deepPurple,
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: insuranceType,
              items: <String>['Health', 'Car', 'Home'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  insuranceType = newValue!;
                  premium = insuranceType == 'Health' ? 50.0 : insuranceType == 'Car' ? 75.0 : 100.0;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Monthly Premium: \$${premium.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: _showPreview,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50), // Full width with fixed height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Optional: rounded corners
                  ),
                ),
                child: const Text('Buy'),
              ),
            ),
            if (previewShown) ...[
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Insurance Preview', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('Type: $insuranceType'),
                      Text('Premium: \$${premium.toStringAsFixed(2)}/month'),
                      SizedBox(height: 10),
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
              ),
            ],
          ],
        ),
      ),
    );
  }
}