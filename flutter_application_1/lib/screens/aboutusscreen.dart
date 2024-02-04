import 'package:flutter/material.dart';

class aboutusscreen extends StatelessWidget {
  const aboutusscreen({super.key});

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
              "About Us",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Anns(),
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

Widget Anns() {
  return Container(
    child: Column(
      children: [
        Divider(),
        Column(
          children: [
            Text(
              "Oğuzlar Hakkında",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Expanded(
                  child: RichText(
                      text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "Oğuzlar 2011 yılında İstanbulun Kağıthane ilçesinde bir dükkan olarak kurulmuştur ilk zamanlarda Beyaz eşya mağazası olarak faaliyetlerini gözsterdi 2013 yılında Oğuzlar Otomobil ve Motosiklet alım satım üzerine faaliyetlere geçti ve günümüzde 2.el Otomobil & Motosiklet alım satım alanında herkesin kullanabiliceği bir uygulama haline getirildi",
                  ),
                ],
              )))
            ],
          ),
        ),
      ],
    ),
  );
}
