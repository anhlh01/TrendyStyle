import 'package:flutter/material.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';

class ProcessTransactionOrderStatusDetail extends StatelessWidget {
  ProcessTransactionOrderStatusDetail(
      {super.key,
      required this.time,
      required this.content,
      required this.title});
  String title;
  String content;
  String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          MyFlutterApp.check,
          size: 30,
          color: AppColors.primaryColor,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(time)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(content),
          ],
        )
      ],
    );
  }
}
