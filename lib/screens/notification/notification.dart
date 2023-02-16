import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
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
            'Notification',
          ),
        ),
        body: Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 19,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text(
                        'Two-line ListTile anh vui ve anh vui ve',
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        'Here is a second line',
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text("Wed 12 Dec"),
                    ),
                  );
                })));
  }
}
