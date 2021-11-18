import 'package:flutter/material.dart';
import 'package:myapp/page1.dart';

class Prac extends StatefulWidget {
  const Prac({Key? key}) : super(key: key);

  @override
  _PracState createState() => _PracState();
}

class _PracState extends State<Prac> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/oo.jpg'),
                Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page1()));
                      },
                      child: Text("Black T-Shirt",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '\$24.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page1()));
                      },
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_shopping_cart_sharp,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            // clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('images/f.jpg'),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    ' T-Shirt',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  // height: 2,
                  width: 40,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '\$24.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_shopping_cart_sharp,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            // clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('images/llk.jpg'),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    ' T-Shirt',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '\$24.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_shopping_cart_sharp,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
