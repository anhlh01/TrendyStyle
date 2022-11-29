import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';

class ProfileItem extends StatelessWidget {
  ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    this.color,
  });
  String title;
  IconData icon;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
            color: color,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            title,
            style: TextStyle(color: color, fontSize: 16),
          )),
          !(title == "Logout") ? Icon(Icons.keyboard_arrow_right) : Container(),
        ],
      ),
    );
  }
}
