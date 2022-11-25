import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../icons/my_flutter_app_icons.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final List<String> entries = <String>['All', 'Women', 'Men'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: (){

          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: AppFonts.medium(20),
        title: const Text(
          'Hi, Anh Vui Ve',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 5),
                ],
                // border: Border.all(
                //   width: .4
                // ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/340/956/png-transparent-profile-user-icon-computer-icons-user-profile-head-ico-miscellaneous-black-desktop-wallpaper.png", scale: 1),
                radius: 20,
              ),
            ),
          ),

          // IconButton(
          //     onPressed: (){},
          //     icon: const Icon(
          //       Icons.more_horiz_rounded,
          //       color: Colors.black,
          //     ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: AppColors.mainColor,
                        hoverColor: AppColors.mainColor,
                        fillColor: AppColors.grayColor,
                        suffixIconColor: AppColors.mainColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        hintText: "Search here",
                        hintStyle: AppFonts.regular(14),
                        suffixIcon: Icon(MyFlutterApp.search, size: 24,),
                        isDense: true,                      // Added this
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 46,
                  height: 46,
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 20),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
                    ],
                  ),
                  child: Icon(MyFlutterApp.filter, color: Colors.white,),
                )
                //Expanded(child: Text("anh vui ve"))
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 52,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 110,
                    height: 46,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: index != 0 ? AppColors.grayColor : AppColors.mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: Center(child: Text('${entries[index]}', style: TextStyle(color: index != 0 ? AppColors.primaryText : Colors.black),)),
                  );
                },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffFFE0B6),
                      Color(0xffFCA1A1),
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                        "assets/images/car.svg",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    width: 165,
                    child:
                    RichText(
                      text: TextSpan(
                        text: 'Having ',
                        style: AppFonts.medium(20),
                        children: const <TextSpan>[
                          TextSpan(text: 'trouble creating your own wardrobe? ', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Arrivals", style: AppFonts.medium(16),),
                Text("See all", style: TextStyle(color: AppColors.mainColor, decoration: TextDecoration.underline),)
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          child: SvgPicture.asset(
                            "assets/images/car.svg",
                            height: 220,
                            width: 150,
                            fit: BoxFit.cover ,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Leather jacket men',
                                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                  ),
                                ),
                                Expanded(child: Row(
                                  children: [
                                    Icon(MyFlutterApp.star, size: 16, color: AppColors.starColor,),
                                    Icon(MyFlutterApp.star, size: 16, color: AppColors.starColor,),
                                    Icon(MyFlutterApp.star, size: 16, color: AppColors.starColor,),
                                    Icon(MyFlutterApp.star, size: 16, color: AppColors.starColor,),
                                    Icon(MyFlutterApp.star, size: 16, color: AppColors.starColor,),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
