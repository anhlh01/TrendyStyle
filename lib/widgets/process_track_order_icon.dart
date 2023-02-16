import 'package:flutter/material.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';

class ProcessCheckOrderIcon extends StatelessWidget {
  ProcessCheckOrderIcon(
      {super.key, required this.icon, this.isSuccess = false});
  IconData icon;
  bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: isSuccess ? AppColors.successColor : AppColors.primaryText,
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          MyFlutterApp.check,
          color: isSuccess ? AppColors.successColor : AppColors.primaryText,
        ),
      ],
    );
  }
}
