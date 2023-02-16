import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/colors.dart';
import 'package:trendy_style/utilities/fonts.dart';

class TryOn extends StatefulWidget {
  const TryOn({super.key});

  @override
  State<TryOn> createState() => _TryOnState();
}

class _TryOnState extends State<TryOn> {
  List<String> type = ["Clothes", "Models", "Brands"];
  int index = 0;
  void _handleTap(int index) {
    setState(() {
      this.index = index;
    });
  }

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
          'My Closet',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Container(
            height: 470,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("assets/images/product_detail_background.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => {_handleTap(index)},
                    child: Container(
                      margin: EdgeInsets.only(right: 33.5),
                      width: 110,
                      decoration: BoxDecoration(
                          color: this.index == index
                              ? AppColors.primaryColor
                              : AppColors.grayColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(child: Text('${type[index]}')),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          if (index == 0) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 140,
                  width: MediaQuery.of(context).size.width - 60,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 10),
                          width: 110,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/product_detail_background.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Container(
                            margin: EdgeInsets.only(right: 5, top: 5),
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: AppColors.grayColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 5, top: 5),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ] else if (index == 1) ...[
            SizedBox(
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 10),
                      width: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/product_detail_background.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Container(
                        margin: EdgeInsets.only(right: 5, top: 5),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    );
                  }),
            ),
          ] else
            SizedBox(
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 10),
                      width: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/product_detail_background.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    );
                  }),
            ),
        ]),
      ),
    );
  }
}
