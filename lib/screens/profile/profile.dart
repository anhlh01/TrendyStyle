import 'package:flutter/material.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';
import 'package:trendy_style/widgets/profile_item.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: AppFonts.medium(20),
        title: const Text(
          'Profile',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage:
                      AssetImage("assets/images/product_detail_background.png"),
                  radius: 70,
                ),
                Positioned(
                  left: 100,
                  top: 100,
                  child: InkWell(
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.primaryColor,
                        ),
                        child: const Center(
                          child: Icon(
                            MyFlutterApp.edit,
                            size: 16,
                            color: Colors.white,
                          ),
                        )),
                  ),
                )
              ]),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Anh Vui Ve",
                    style: AppFonts.medium(20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("098-4892-489")
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Column(children: [
              ProfileItem(title: "Edit Profile", icon: MyFlutterApp.profile),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(title: "Address", icon: MyFlutterApp.position),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(
                  title: "Notification", icon: MyFlutterApp.notification),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(title: "My Wallete", icon: MyFlutterApp.profile),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(title: "Security", icon: MyFlutterApp.profile),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(title: "Language", icon: MyFlutterApp.profile),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(title: "Privacy Policy", icon: MyFlutterApp.profile),
              Divider(
                color: AppColors.primaryText,
              ),
              ProfileItem(
                title: "Logout",
                icon: MyFlutterApp.checkout,
                color: Colors.red,
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
