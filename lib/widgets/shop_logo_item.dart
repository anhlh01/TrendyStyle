import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_style/utilities/colors.dart';

// ignore: must_be_immutable
class ShopLogo extends StatelessWidget {
  ShopLogo({super.key, required this.icon, required this.name});
  IconData icon;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            color: AppColors.grayColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(icon),
        ),
        Text(name),
      ],
    );
  }
}
