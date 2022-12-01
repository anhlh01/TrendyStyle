import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
            'My Orders',
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorColor: AppColors.primaryColor,
            labelColor: AppColors.primaryColor,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            tabs: [
              Tab(
                text: 'Active',
              ),
              Tab(
                text: 'Complete',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    padding: const EdgeInsets.all(15),
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
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nike Air Presto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
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
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Blue',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const SizedBox(
                                    height: 20,
                                    child: VerticalDivider(
                                      thickness: 1,
                                      color: Colors.black,
                                    )),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Size = M',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Container(
                                width: 80,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.grayColor,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                    child: Text(
                                  "In Delivery",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ))),
                            Row(
                              children: [
                                Text(
                                  '\$ 126.0',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: AppColors.primaryColor),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                    width: 85,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Track Order",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ))),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    padding: const EdgeInsets.all(15),
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
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nike Air Presto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
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
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Blue',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const SizedBox(
                                    height: 20,
                                    child: VerticalDivider(
                                      thickness: 1,
                                      color: Colors.black,
                                    )),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Size = M',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Container(
                                width: 80,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.greenColor,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                    child: Text(
                                  "Complete",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.successColor),
                                ))),
                            Row(
                              children: [
                                Text(
                                  '\$ 126.0',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: AppColors.primaryColor),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          builder: (context) {
                                            return FractionallySizedBox(
                                              heightFactor: 0.72,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10),
                                                    child: Divider(
                                                      thickness: 5,
                                                      color:
                                                          AppColors.primaryText,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Review",
                                                    style: AppFonts.medium(25),
                                                  ),
                                                  Container(
                                                    height: 140,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15,
                                                        vertical: 30),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width: 100,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                const DecorationImage(
                                                              image: AssetImage(
                                                                  'assets/images/product_detail_background.png'),
                                                              fit: BoxFit.cover,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 15,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 8.0),
                                                              child: Text(
                                                                'Nike Air Presto',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 18,
                                                                  height: 18,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 8,
                                                                ),
                                                                const Text(
                                                                  'Blue',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12),
                                                                ),
                                                                const SizedBox(
                                                                  width: 4,
                                                                ),
                                                                const SizedBox(
                                                                    height: 20,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1,
                                                                      color: Colors
                                                                          .black,
                                                                    )),
                                                                const SizedBox(
                                                                  width: 4,
                                                                ),
                                                                const Text(
                                                                  'Size = M',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12),
                                                                ),
                                                                const SizedBox(
                                                                  width: 4,
                                                                ),
                                                                const SizedBox(
                                                                    height: 20,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1,
                                                                      color: Colors
                                                                          .black,
                                                                    )),
                                                                const SizedBox(
                                                                  width: 4,
                                                                ),
                                                                const Text(
                                                                  'Qty = 1',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              '\$ 126.0',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColors
                                                                      .primaryColor),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    "How is your order?",
                                                    style: AppFonts.medium(20),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    "Please give your rating & also your review...",
                                                    style: AppFonts.regular(14),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  RatingBar.builder(
                                                    initialRating: 3,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            horizontal: 10.0),
                                                    itemBuilder: (context, _) =>
                                                        const Icon(
                                                      MyFlutterApp.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {},
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15,
                                                        vertical: 30),
                                                    child: TextFormField(
                                                      initialValue: "Comment",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .primaryText),
                                                      decoration:
                                                          InputDecoration(
                                                        suffixIconColor:
                                                            AppColors.grayColor,
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.0)),
                                                          borderSide:
                                                              BorderSide(
                                                            color: AppColors
                                                                .blueColor,
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.0)),
                                                          borderSide:
                                                              BorderSide(
                                                            color: AppColors
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .only(left: 10),
                                                        filled: true,
                                                        fillColor:
                                                            AppColors.grayColor,
                                                        focusColor:
                                                            AppColors.grayColor,
                                                        hoverColor:
                                                            AppColors.grayColor,
                                                        //labelText: lable,
                                                        labelStyle:
                                                            AppFonts.medium(16),
                                                        //errorText: 'Error message',
                                                        border:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.maxFinite,
                                                    margin: EdgeInsets.only(
                                                        left: 15,
                                                        right: 15,
                                                        bottom: 15),
                                                    child: Divider(
                                                      color:
                                                          AppColors.primaryText,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 15,
                                                            left: 10,
                                                            right: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        OutlinedButton(
                                                          onPressed: () {
                                                            // Respond to button press
                                                          },
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            7.0),
                                                                    side:
                                                                        BorderSide(
                                                                      color: AppColors
                                                                          .primaryColor,
                                                                    )),
                                                            minimumSize:
                                                                const Size(
                                                                    170, 52),
                                                            maximumSize:
                                                                const Size(
                                                                    170, 52),
                                                            backgroundColor:
                                                                AppColors
                                                                    .grayColor,
                                                            textStyle:
                                                                const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                          ),
                                                          child: Text(
                                                            'Reset',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: AppColors
                                                                    .primaryText),
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Respond to button press
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                                side: BorderSide
                                                                    .none),
                                                            minimumSize:
                                                                const Size(
                                                                    170, 52),
                                                            maximumSize:
                                                                const Size(
                                                                    170, 52),
                                                            backgroundColor:
                                                                AppColors
                                                                    .primaryColor,
                                                            textStyle:
                                                                const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                          ),
                                                          child: Text(
                                                            'Apply',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        "Review",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
