import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:trendy_style/icons/my_flutter_app_icons.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';
import 'package:trendy_style/widgets/process_track_order_dotline.dart';
import 'package:trendy_style/widgets/process_track_order_icon.dart';
import 'package:trendy_style/widgets/process_track_order_detail.dart';
import 'package:trendy_style/widgets/process_track_order_status_dotline.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
          'Track Order',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 315 + 92 * 6,
          padding: const EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/product_detail_background.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Nike Air Presto',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Blue',
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const SizedBox(
                                  height: 20,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: Colors.black,
                                  )),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Size = M',
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const SizedBox(
                                  height: 20,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: Colors.black,
                                  )),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Qty = 1',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Text(
                            '\$ 126.0',
                            style: TextStyle(
                                fontSize: 20, color: AppColors.primaryColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ProcessCheckOrderIcon(
                      icon: Icons.attach_money_rounded,
                      isSuccess: true,
                    ),
                    ProcessTrackOrderDot(
                      isSuccess: true,
                    ),
                    ProcessCheckOrderIcon(
                      icon: MyFlutterApp.package,
                      isSuccess: true,
                    ),
                    ProcessTrackOrderDot(
                      isSuccess: true,
                    ),
                    ProcessCheckOrderIcon(
                      icon: MyFlutterApp.shipping_car,
                      isSuccess: true,
                    ),
                    ProcessTrackOrderDot(),
                    ProcessCheckOrderIcon(
                      icon: MyFlutterApp.profile,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Order Status Details",
                  style: AppFonts.medium(18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProcessTransactionOrderStatusDetail(
                        time: '09:30 PM',
                        content: '489 Bangkok Thailand FR-95892',
                        title: "Order In transit - May 20",
                      ),
                      const ProcessTrackOrderStatusDotLine(),
                      ProcessTransactionOrderStatusDetail(
                        time: '09:30 PM',
                        content: '489 Bangkok Thailand FR-95892',
                        title: "Order In transit - May 20",
                      ),
                      const ProcessTrackOrderStatusDotLine(),
                      ProcessTransactionOrderStatusDetail(
                        time: '09:30 PM',
                        content: '489 Bangkok Thailand FR-95892',
                        title: "Order In transit - May 20",
                      ),
                      const ProcessTrackOrderStatusDotLine(),
                      ProcessTransactionOrderStatusDetail(
                        time: '09:30 PM',
                        content: '489 Bangkok Thailand FR-95892',
                        title: "Order In transit - May 20",
                      ),
                      const ProcessTrackOrderStatusDotLine(),
                      ProcessTransactionOrderStatusDetail(
                        time: '09:30 PM',
                        content: '489 Bangkok Thailand FR-95892',
                        title: "Order In transit - May 20",
                      ),
                      const ProcessTrackOrderStatusDotLine(),
                      ProcessTransactionOrderStatusDetail(
                        time: '09:30 PM',
                        content: '489 Bangkok Thailand FR-95892',
                        title: "Order In transit - May 20",
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
