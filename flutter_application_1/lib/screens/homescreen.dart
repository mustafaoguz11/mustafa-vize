import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "OĞUZLAR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: Column(
          children: [
            ProfileItem(
              avatar: 'assets/images/avatar.jpg',
              name: 'Mustafa Oğuz',
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            Expanded(
              child: Column(
                children: [
                  Divider(),
                  MenuItem(
                    title: "Home screen",
                    icon: Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                  MenuItem(
                    title: "About us",
                    icon: Icon(
                      Icons.info_outline,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/aboutus");
                    },
                  ),
                  MenuItem(
                    title: "Contact us",
                    icon: Icon(
                      Icons.message,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/contactus");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    title: "Settings",
                    icon: Icon(
                      Icons.settings,
                      size: 20,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/welcome', (route) => false);
                    },
                    title: "Logout",
                  ),
                ],
              ),
            ),
            Text(
              "Version 1.0.7",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 83, 86, 78),
                  Color.fromARGB(155, 0, 0, 0),
                ],
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  arabamototrItem("Yamaha"),
                  arabamototrItem("Honda"),
                  arabamototrItem("Porche"),
                  arabamototrItem("Lamborghini"),
                  arabamototrItem("Mercedes"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 80,
              color: Color.fromARGB(255, 255, 255, 255),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    aracrow("assets/images/gorsel11.jpg",
                        "Hasar kayıtsız R 25 2022 Model 14.000 Km "),
                    Divider(),
                    aracrow("assets/images/gorsel12.jpg",
                        "Tek Hatası Eski Sahibi Porsche 911 Turbo S"),
                    Divider(),
                    aracrow("assets/images/gorsel13.jpg",
                        "Hasar kayıtsız BMW 2021 Model 20.000 Km"),
                    Divider(),
                    aracrow("assets/images/gorsel14.jpg",
                        " Koleksiyonerler için Mercedes Benz 220 S  "),
                    Divider(),
                    aracrow("assets/images/gorsel15.jpg",
                        "İtalayan Aygırı Lamborghini Huracan 0 Km   "),
                    Divider(),
                    aracrow("assets/images/gorsel16.jpg",
                        "  BMV R 1200 GS Adventure Hasar Kayıtsız   "),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container arabamototrItem(String text) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(left: 4, right: 4),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        text,
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget aracrow(String photo, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Image.asset(
            photo,
            width: 140,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.info)
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;
  const ProfileItem({
    super.key,
    this.onTap,
    required this.avatar,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 40,
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(name),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(
              width: 6,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
