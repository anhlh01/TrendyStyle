import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final int count = 5;
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
              onPressed: () {},
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: AppFonts.medium(20),
            title: const Text(
              'Check out',
            ),
            // actions: [
            //   IconButton(onPressed: (){}, icon: Icon(MyFlutterApp.cart, color: Colors.black,))
            // ],
          ),
          body: SingleChildScrollView(
            child: Container(
              height: 415 + count * 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 18, right: 18, top: 10),
                    child: Text(
                      "Address",
                      style: AppFonts.medium(24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(left: 18, right: 18, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          MyFlutterApp.map_pin,
                          color: AppColors.primaryColor,
                          size: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('589 Bangkok Thailand 10700'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              MyFlutterApp.edit,
                              size: 14,
                              color: AppColors.primaryColor,
                            ),
                            Text(
                              " Edit",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        primary: false,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(8),
                        itemCount: count,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/product_detail_background.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    // border: Border.all(
                                    //   width: 8,
                                    // ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Nike Air Presto',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 29,
                                        ),
                                        Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: AppColors.grayColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Icon(
                                              MyFlutterApp.delete,
                                              size: 16,
                                              color: AppColors.primaryColor,
                                            )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Blue',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        SizedBox(
                                            height: 20,
                                            child: VerticalDivider(
                                              thickness: 1,
                                              color: Colors.black,
                                            )),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Size = M',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '\$ 126.0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: AppColors.primaryColor),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.grayColor,
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 16,
                                              color: AppColors.primaryColor,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.grayColor,
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 16,
                                              color: AppColors.primaryColor,
                                            )),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, right: 18, top: 10),
                    child: Text(
                      "Chose Shipping",
                      style: AppFonts.medium(24),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, top: 10),
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.local_shipping_outlined,
                          color: AppColors.primaryColor,
                        ),
                        title: Text('Chose Shipping Type'),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 18, right: 18, top: 10, bottom: 10),
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Amount"),
                            Text(
                              "\$1,458.28",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping"),
                            Text(
                              "-",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total"),
                            Text(
                              "-",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
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
                      side: BorderSide.none),
                  minimumSize: Size(340, 52),
                  maximumSize: Size(340, 52),
                  backgroundColor: AppColors.mainColor,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CONTINUE TO PAYMENT',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      MyFlutterApp.checkout,
                      size: 18,
                    ),
                    // Container(
                    //   width: 70,
                    //   height: 30,
                    //   decoration: BoxDecoration(
                    //     color: AppColors.primaryColor,
                    //     borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: Center(
                    //       child: Text(
                    //     '\$ 135.96',
                    //     style: TextStyle(
                    //         fontSize: 12, fontWeight: FontWeight.w300),
                    //   )),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
