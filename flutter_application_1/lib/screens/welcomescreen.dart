import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/logos3.png",
                width: 400,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Row(
                      children: [
                        Icon(Icons.login_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Login"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.app_registration),
                        SizedBox(
                          width: 10,
                        ),
                        Text("register"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
