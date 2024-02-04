import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/menu%C4%B1tem.dart';

class settingsscreen extends StatelessWidget {
  const settingsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Settings",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            MenuItem(
              icon: Icon(Icons.language),
              title: "English",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.notifications),
              title: "Notifications",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.switch_account),
              title: "Switch Account",
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
