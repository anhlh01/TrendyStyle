import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class Closet extends StatelessWidget {
  const Closet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: AppFonts.medium(20),
        title: const Text(
          'My Closet',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 230,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.9,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/product_detail_background.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      '$index',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Divider(
            color: AppColors.mainColor,
            height: 15,
            thickness: 15,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Favorite",
                style: AppFonts.medium(20),
              ),
              Text(
                "See all",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //decoration: BoxDecoration(color: Colors.blue),
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                //padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 130,
                    margin: EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/product_detail_background.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //child: Center(child: Text('Entry 1')),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: AppColors.mainColor,
            height: 15,
            thickness: 15,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Schedule",
                style: AppFonts.medium(20),
              ),
              Text(
                "See all",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //decoration: BoxDecoration(color: Colors.blue),
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                //padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/product_detail_background.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //child: Center(child: Text('Entry 1')),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
