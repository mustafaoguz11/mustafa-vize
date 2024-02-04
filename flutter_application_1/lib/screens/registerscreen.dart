import 'package:flutter/material.dart';

class registerscreen extends StatelessWidget {
  const registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email:",
                style: TextStyle(color: Colors.cyan),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 252, 252),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email adress",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Password:",
                style: TextStyle(color: Colors.cyan),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 253),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " Verify Your Password:",
                style: TextStyle(color: Colors.cyan),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Verify your password",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/welcome", (Route<dynamic> route) => false);
                    },
                    child: Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
