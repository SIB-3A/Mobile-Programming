import 'package:flutter/material.dart';

void main() {
  runApp(const Percobaan1());
}

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intan",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Intan Firdausi",
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
          foregroundColor: Colors.grey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "BALONKU ADA LIMA\nCipt. A. T. Mahmud",
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Balonku ada lima\nRupa-rupa warnanya\nHijau kuning kelabu\nMerah muda dan biru",
              textAlign: TextAlign.left,
            ),
            Container(
              margin: EdgeInsets.only(left: 170),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Meletus balon hijau\n"),
                    TextSpan(
                      text: "DOR..!!!\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Hatiku sangat kacau\nBalonku tinggal empat\nKupegang erat-erat",
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
