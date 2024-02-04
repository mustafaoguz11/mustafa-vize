import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homescreen.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ProfileItem(
              avatar: 'assets/images/avatar.jpg',
              name: 'Mustafa Oğuz',
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.email),
              title: "mustafaogus12@gmail.com",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.inbox),
              title: "mustafaoguss",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.phone),
              title: "0556 556 56 56",
              onTap: () {},
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
