import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
            'Favorite',
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 38,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.only(right: 10),
                        height: 38,
                        child: Center(child: Text('Entry')),
                        decoration: BoxDecoration(
                            //color: AppColors.primaryColor,
                            border: Border.all(color: AppColors.primaryText),
                            borderRadius: BorderRadius.circular(20)),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                //height: 1000,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 256 * 1.25,
                    ),
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 190,
                        height: 350,
                        margin: EdgeInsets.all(5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Stack(children: [
                                  Image.asset(
                                    "assets/images/product_detail_background.png",
                                    alignment: AlignmentDirectional.center,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: AppColors.primaryColor),
                                          child: Center(
                                            child: Icon(
                                              Icons.heart_broken,
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  )
                                ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Nike run swift 2",
                                style: AppFonts.medium(18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                Icon(Icons.star_border),
                                Text("4.5 | "),
                                Container(
                                    width: 80,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: AppColors.grayColor,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "2,598 sold",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ))),
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$ 126.0',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: AppColors.primaryColor),
                              ),
                            ]),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
