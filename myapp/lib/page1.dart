import 'package:flutter/material.dart';
import 'package:myapp/pages/card.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft)),
        ),
      ),
      body: Column(
        children: [
          Image.asset("images/nn.webp"),
          FittedBox(
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 20),
            child: Text(
              'Black T-Shirt',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 200,
            ),
            child: Text(
              '\$24.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Different cultures have evolved various ways of creating clothes out of cloth. One approach simply involves draping the cloth. Many people wore, and still wear, garments consisting of rectangles of cloth wrapped to fit – for example, the dhoti for men and the sari for women in the Indian subcontinent, the Scottish kilt,"),
          )
        ],
      ),
    );
  }
}
