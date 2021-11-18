import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/card.dart';
import 'package:myapp/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HomePage")),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft)),
        ),
        backgroundColor: Colors.orange,
        elevation: 4,
        titleSpacing: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.purple.withOpacity(.99),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {},
        items: const [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('shop'),
            icon: Icon(Icons.shopping_cart_sharp),
          ),
          BottomNavigationBarItem(
            title: Text('Menu'),
            icon: Icon(Icons.menu_book_sharp),
          ),
          BottomNavigationBarItem(
            title: Text('pace'),
            icon: Icon(Icons.location_pin),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("mohammad talha"),
                  accountEmail: Text("t.raheel125@gmail.com"),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.purple, Colors.red])),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/r.png"),
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    icon: Icon(Icons.login_outlined)),
                title: Text(
                  "logout",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.black,
                ),
                title: Text(
                  "cart",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  color: Colors.black,
                ),
                title: Text(
                  "favorite",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: const Prac(),
    );
  }
}
