import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';
import 'package:trendy_style/widgets/edit_profile_item.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime _date = DateTime(2001, 11, 01);
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final TextEditingController _updateDate = TextEditingController();
  void _selectDate() async {
    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1900, 1),
      lastDate: DateTime(2022, 7),
      helpText: 'Select a date',
    );
    if (newDate != null) {
      setState(() {
        _date = newDate;
      });
    }
    _updateDate.value = TextEditingValue(text: formatter.format(_date));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: AppFonts.medium(20),
          title: const Text(
            'Edit Profile',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Full Name",
                  style: AppFonts.medium(14),
                ),
                const SizedBox(
                  height: 10,
                ),
                EditProfileItem(text: "Anh vui ve"),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Birth Date",
                  style: AppFonts.medium(14),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 46,
                  child: TextFormField(
                    //initialValue: formatter.format(_date),
                    decoration: InputDecoration(
                      suffixIconColor: AppColors.mainColor,
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: AppColors.mainColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: AppColors.mainColor,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 10),
                      filled: true,
                      fillColor: AppColors.grayColor,
                      labelStyle: AppFonts.medium(16),
                      hintText: formatter.format(_date),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 20)),
                      suffixIcon: const Icon(Icons.calendar_month),
                    ),
                    readOnly: true,
                    onTap: () => _selectDate(),
                    // ignore: avoid_print
                    onChanged: (value) => print(value),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Email",
                  style: AppFonts.medium(14),
                ),
                const SizedBox(
                  height: 10,
                ),
                EditProfileItem(
                  text: "anhvuive@gmail.com",
                  icon: Icons.email_outlined,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Phone",
                  style: AppFonts.medium(14),
                ),
                const SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  flagsButtonPadding: const EdgeInsets.only(left: 10),
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    fillColor: AppColors.grayColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                        color: AppColors.mainColor,
                      ),
                    ),
                    suffixIconColor: AppColors.mainColor,
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                        color: AppColors.mainColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                        color: AppColors.blueColor,
                      ),
                    ),
                    hintText: "0977186011",
                    contentPadding: const EdgeInsets.only(left: 10),
                  ),
                  initialCountryCode: 'VN',
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Gender",
                  style: AppFonts.medium(14),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 46,
                  child: DropdownButtonFormField(
                    icon: const Icon(Icons.expand_more),
                    iconEnabledColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10, right: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: AppColors.mainColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: AppColors.mainColor,
                        ),
                      ),
                      filled: true,
                      fillColor: AppColors.grayColor,
                    ),
                    dropdownColor: Colors.white,
                    value: "Female",
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
              ]),
        ),
        persistentFooterButtons: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide.none),
                minimumSize: const Size(340, 52),
                maximumSize: const Size(340, 52),
                backgroundColor: AppColors.mainColor,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'UPDATE',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
