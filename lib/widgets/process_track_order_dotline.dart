import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/colors.dart';

class ProcessTrackOrderDot extends StatelessWidget {
  ProcessTrackOrderDot({super.key, this.isSuccess = false});
  bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: DottedLine(
        lineLength: 70,
        dashColor: isSuccess ? AppColors.successColor : AppColors.primaryText,
      ),
    );
  }
}
