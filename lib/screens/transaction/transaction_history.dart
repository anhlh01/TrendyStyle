import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/fonts.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

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
          'Transaction History',
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/images/product_detail_background.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Nike Air Presto',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Text(
                            "\$126.99",
                            style: AppFonts.medium(18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "May 18, 2024 | 09:45 AM",
                        style: AppFonts.regular(13),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
