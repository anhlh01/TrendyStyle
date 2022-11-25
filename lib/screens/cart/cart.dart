import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData().copyWith(
          dividerColor: Colors.transparent,
        ),
        child: Scaffold(
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
              'Cart',
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(MyFlutterApp.cart, color: Colors.black,))
            ],
          ),
          body: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/product_detail_background.png'),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   width: 8,
                          // ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Nike Air Presto', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                              SizedBox(width: 29,),
                              Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.grayColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(MyFlutterApp.delete, size: 16, color: AppColors.primaryColor,)
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text('Blue', style: TextStyle(fontSize: 12),),
                              SizedBox(width: 8,),
                              SizedBox(height: 20, child: VerticalDivider(thickness: 1, color: Colors.black,)),
                              SizedBox(width: 8,),
                              Text('Size = M', style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('\$ 126.0', style: TextStyle(fontSize: 20, color: AppColors.primaryColor),),
                              SizedBox(width: 30,),
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.grayColor,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Icon(Icons.remove, size: 16, color: AppColors.primaryColor,)
                              ),
                              SizedBox(width: 10,),
                              Text('1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.grayColor,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Icon(Icons.add, size: 16, color: AppColors.primaryColor,)
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              }
          ),
          persistentFooterButtons: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide.none
                  ),
                  minimumSize: Size(350, 46),
                  backgroundColor: AppColors.mainColor,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(MyFlutterApp.checkout, size: 18,),
                    Text('GO TO CHECKOUT', style: TextStyle(fontSize: 18),),
                    Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Text('\$ 135.96', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
