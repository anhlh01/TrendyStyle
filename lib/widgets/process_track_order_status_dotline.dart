import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trendy_style/utilities/colors.dart';

class ProcessTrackOrderStatusDotLine extends StatelessWidget {
  const ProcessTrackOrderStatusDotLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: DottedLine(
        lineLength: 50,
        dashColor: AppColors.primaryText,
        direction: Axis.vertical,
      ),
    );
  }
}
