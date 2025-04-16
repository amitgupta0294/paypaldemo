import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PayPal', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple, centerTitle: true,),

      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.deepPurple,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  height: 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Amit", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
                              Text("amitgupta@gmail.com", style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),)
                            ],
                          ),),
          
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit), color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
          
              Card(
                color: Colors.green,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.card_giftcard, color: Colors.white,),
                      Text("  View Gifts and Rewards",
                        style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
        
        
          
              SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [

                    GestureDetector(
                      onTap:() {},
                      child: Card(
                        color: Colors.deepPurple.shade100,
                        child: Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          child: Text("UPI Pay", style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap:() {},
                      child: Card(
                        color: Colors.deepPurple.shade100,
                        child: Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          child: Text("Self Transfer", style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap:() {
                        print("--=Check Balance");
                      },
                      child: Card(
                        color: Colors.deepPurple.shade100,
                        child: Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          child: Text("Check Balance", style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Bill payments",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [

                    GestureDetector(
                      onTap:() {},
                      child: Card(
                        color: Colors.deepPurple.shade100,
                        child: Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          child: Text("Utility", style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap:() {},
                      child: Card(
                        color: Colors.deepPurple.shade100,
                        child: Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          child: Text("Stock", style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {

                      },
                      child: Card(
                        color: Colors.deepPurple.shade100,
                        child: Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          child: Text("Insurance", style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
      ),
      );
  }
}
