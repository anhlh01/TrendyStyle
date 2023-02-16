import 'package:flutter/material.dart';

class GetWeight extends StatefulWidget {
  const GetWeight({super.key});

  @override
  State<GetWeight> createState() => _GetWeightState();
}

class _GetWeightState extends State<GetWeight> {
  FixedExtentScrollController _controller =
      FixedExtentScrollController(initialItem: 100);
  int index = 100;
  int cm = 0;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: 50);
  }

  @override
  void dispose() {
    _controller.dispose();
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
          RichText(
            text: TextSpan(
              text: 'Your ',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: const <TextSpan>[
                TextSpan(
                    text: 'current weight',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
                "We will use this data to give you a better type of size for you",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 80,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView.useDelegate(
                onSelectedItemChanged: (value) => setState(() {
                  cm = value;
                }),
                itemExtent: 80,
                perspective: 0.01,
                diameterRatio: 5,
                squeeze: 0.8,
                physics: FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 2,
                  builder: (context, index) {
                    return RotatedBox(
                      quarterTurns: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                          color: cm == index ? Colors.amber : Colors.white,
                          child: Center(
                            child: Text(
                              index == 0 ? 'kg' : 'lb',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 15,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(20, 40),
                    bottomRight: Radius.elliptical(20, 40))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                '$index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            // color: Colors.black12,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                offAxisFraction: 8,

                useMagnifier: false,
                onSelectedItemChanged: (value) => setState(() {
                  this.index = value;
                  // _controller.animateToItem(value,
                  //     duration: Duration(milliseconds: 500),
                  //     curve: Curves.easeIn);
                }),
                //overAndUnderCenterOpacity: 0.9,
                squeeze: 0.3,
                physics: FixedExtentScrollPhysics(),
                magnification: 1.2,
                perspective: 0.001,
                itemExtent: 4.0,
                controller: _controller,
                children: List.generate(200, (index) {
                  return Container(
                    width: index % 5 == 0 ? 40.0 : 20,
                    height: 30,
                    color: index % 5 == 0 ? Colors.amber : Colors.blue,
                  );
                }),
              ),
            ),
          ),
          SizedBox(height: 50),
          Stack(
            children: <Widget>[
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    value: 3 / 4,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ),
              //SizedBox(height: 20.0),
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
