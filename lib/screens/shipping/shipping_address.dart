import 'package:flutter/material.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  final int _count = 10;
  final List<bool> _checkList = [];
  _ShippingAddressState(){
    for(var i = 0; i < _count; i++){
      _checkList.add(true);
    }
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
              'Shipping Address',
            ),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(
                Icons.add,
                color: Colors.black,
              ))
            ],
          ),
          body: ListView.builder(
              itemCount: _count,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(left: 18, right: 18, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        MyFlutterApp.map_pin,
                        color: AppColors.primaryColor,
                        size: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Home',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('589 Bangkok Thailand 10700'),
                        ],
                      ),
                      Radio<bool>(
                        fillColor: MaterialStateProperty.resolveWith ((Set  states) {
                          if (states.contains(MaterialState.disabled)) {
                            return AppColors.primaryColor.withOpacity(.32);
                          }
                          return AppColors.primaryColor;
                        }),
                        value: _checkList[index],
                        groupValue: _checkList[index],
                        onChanged: (bool? value) {
                          setState(() {
                            _checkList[index] = value!;
                          });
                        },
                      ),
                    ],
                  ),
                );
              }),
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
                  minimumSize: const Size(350, 46),
                  backgroundColor: AppColors.mainColor,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                child: const Text(
                  'Apply',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ));
  }
}
