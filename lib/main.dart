import 'package:flutter/material.dart';
import 'package:trendy_style/screens/cart/cart.dart';
import 'package:trendy_style/screens/checkout/checkout.dart';
import 'package:trendy_style/screens/home/home_page.dart';
import 'package:trendy_style/screens/home/main_home_page.dart';
import 'package:trendy_style/screens/order/order.dart';
import 'package:trendy_style/screens/order/track_order.dart';
import 'package:trendy_style/screens/product/product_detail.dart';
import 'package:trendy_style/screens/profile/edit_profile.dart';
import 'package:trendy_style/screens/profile/profile.dart';
import 'package:trendy_style/screens/shipping/shipping_address.dart';
import 'package:trendy_style/screens/transaction/transaction_detail.dart';
import 'package:trendy_style/screens/transaction/transaction_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ShippingAddress(),
    );
  }
}
