import 'package:flutter/material.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  List<String> widgetList = ['A', 'B', 'C'];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Container(
            height: 100,
            width: 56,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: BackButton(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 250,
          ),
          Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              "Skip",
              style: TextStyle(color: Colors.black),
            )),
          ),
          SizedBox(
            width: 20,
          )
        ],
        title: Text('Horizontal List Example'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 40,
            color: Colors.amber,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "GO PREMIUM",
            style: TextStyle(
                color: Colors.black26,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Try closes',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 40),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
                "Pay only when you use the app. You can cancel this subscription",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54)),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            crossAxisSpacing: 10,
            padding: EdgeInsets.all(15),
            crossAxisCount: 3,
            childAspectRatio: 0.8,
            controller: new ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: widgetList.map((String value) {
              return Container(
                padding: EdgeInsets.all(10),
                width: 110.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Gold',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$6.99',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lifetime access",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 150,
          ),
          Stack(
            children: <Widget>[
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    value: 1,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 9.0),
                  height: 80,
                  width: 80,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    side: BorderSide(color: Colors.amber)))),
                    onPressed: () {
                      // Perform some action
                    },
                    child: Center(child: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
