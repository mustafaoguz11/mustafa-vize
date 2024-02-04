import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/menu%C4%B1tem.dart';

class contactusscreen extends StatelessWidget {
  const contactusscreen({super.key});

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
              "Contact Us",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.web),
              title: "www.oğuzlar.com.tr",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.phone),
              title: "0212 324 10 46",
              onTap: () {},
            ),
            Divider(),
            MenuItem(
              icon: Icon(Icons.photo_camera),
              title: "oğuzlarautomotive",
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
