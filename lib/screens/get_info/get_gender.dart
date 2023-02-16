import 'package:flutter/material.dart';

class GetGender extends StatefulWidget {
  const GetGender({super.key});

  @override
  State<GetGender> createState() => _GetGenderState();
}

class _GetGenderState extends State<GetGender> {
  bool isMale = true;
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
      body: Container(
        padding: EdgeInsets.all(20),
        //color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'What is your ',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'gender?',
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
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => setState(() {
                    isMale = true;
                  }),
                  child: Opacity(
                    opacity: isMale ? 1 : 0.7,
                    child: Container(
                      width: 170.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                          ),
                        ],
                        color: isMale
                            ? Color.fromARGB(255, 226, 255, 196)
                            : Color.fromARGB(255, 246, 255, 236),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/male.png",
                            height: isMale ? 140 : 120,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    isMale = false;
                  }),
                  child: Opacity(
                    opacity: !isMale ? 1 : 0.7,
                    child: Container(
                      width: 170.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                          ),
                        ],
                        color: !isMale
                            ? Color.fromARGB(255, 226, 255, 196)
                            : Color.fromARGB(255, 246, 255, 236),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/female.png",
                            height: !isMale ? 140 : 120,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 130),
            Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      value: 1 / 4,
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
      ),
    );
  }
}
