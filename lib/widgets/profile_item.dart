import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            title,
            style: TextStyle(color: color, fontSize: 16),
          )),
          !(title == "Logout") ? const Icon(Icons.keyboard_arrow_right) : Container(),
        ],
      ),
    );
  }
}
