import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

import '../../icons/my_flutter_app_icons.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined, color: AppColors.primaryColor,),
                  Icon(Icons.favorite_outline_rounded, color: AppColors.primaryColor,)
                ],
              ),
              backgroundColor: AppColors.mainColor,
              pinned: true,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/product_detail_background.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 140),
                  child: Divider(
                    thickness: 3,
                    color: AppColors.primaryText,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Girls Shots with Sun Glasses and sandals", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                    SizedBox(height: 25,),
                    Text(
                      "Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo "'Contenido aquí, contenido aquí'".",
                      style: TextStyle(color: AppColors.primaryText, fontSize: 15),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(MyFlutterApp.star, size: 26, color: AppColors.starColor,),
                        Icon(MyFlutterApp.star, size: 26, color: AppColors.starColor,),
                        Icon(MyFlutterApp.star, size: 26, color: AppColors.starColor,),
                        Icon(MyFlutterApp.star, size: 26, color: AppColors.starColor,),
                        Icon(MyFlutterApp.star, size: 26, color: AppColors.starColor,),
                        SizedBox(width: 20,),
                        Text("4,2567 Reveiws", style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 16, color: AppColors.primaryText),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    DottedLine(dashLength: 10, dashGapLength: 10, dashColor: AppColors.primaryText,),
                    SizedBox(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(30, 30),
                            side: BorderSide(color: AppColors.mainColor),
                            textStyle: TextStyle(color: AppColors.mainColor, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          child: Icon(Icons.remove, color: AppColors.mainColor,)
                        ),
                        SizedBox(width: 20,),
                        Text("1", style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20,),
                        ElevatedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(30, 30),
                            backgroundColor: AppColors.mainColor,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold),),
                          child: Icon(Icons.add)
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(175, 46),
                  side: BorderSide(color: AppColors.mainColor),
                  textStyle: TextStyle(color: AppColors.mainColor, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                child: Text("Try it on", style: TextStyle(color: AppColors.mainColor),),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(175, 46),
                  backgroundColor: AppColors.mainColor,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold),),
                child: Text('Buy it now', style: TextStyle(fontSize: 18),),
              )
            ],
          )
        ],
        // bottomNavigationBar: Container(
        //     child: Column(
        //       children: [
        //         Text("anh vui ve"),
        //         OutlinedButton(
        //           onPressed: () {
        //             debugPrint('Received click');
        //           },
        //           child: const Text('Click Me'),
        //         )
        //       ],
        //     )
        // ),
      )
    );
  }
}
