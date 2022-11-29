import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class EditProfileItem extends StatelessWidget {
  EditProfileItem({super.key, required this.text, this.icon});
  //String lable;
  String text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return icon == null
        ? SizedBox(
            height: 46,
            child: TextFormField(
              initialValue: text,
              decoration: InputDecoration(
                suffixIconColor: AppColors.mainColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: AppColors.blueColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: AppColors.mainColor,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 10),
                filled: true,
                fillColor: AppColors.grayColor,
                focusColor: AppColors.grayColor,
                hoverColor: AppColors.grayColor,
                //labelText: lable,
                labelStyle: AppFonts.medium(16),
                //errorText: 'Error message',
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          )
        : SizedBox(
            height: 46,
            child: TextFormField(
              enabled: false,
              initialValue: text,
              decoration: InputDecoration(
                iconColor: AppColors.grayColor,
                suffixIconColor: AppColors.blueColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: AppColors.blueColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: AppColors.blueColor,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 10),
                filled: true,
                fillColor: AppColors.grayColor,
                focusColor: AppColors.grayColor,
                hoverColor: AppColors.grayColor,
                //labelText: lable,
                labelStyle: AppFonts.medium(16),
                //errorText: 'Error message',
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                suffixIcon: Icon(
                  icon,
                  color: Color.fromARGB(255, 198, 198, 198),
                ),
              ),
            ),
          );
  }
}
