import 'package:flutter/material.dart';
import 'package:btsc_app/card_page.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    Text("Messages"),
    Text("Profile"),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Tabs = <Tab>[
      Tab(icon: Icon(Icons.favorite), text: 'Tab1'),
      Tab(icon: Icon(Icons.shop), text: 'Tab2'),
      Tab(icon: Icon(Icons.search), text: 'Tab3'),
    ];
    return DefaultTabController(
      length: Tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          bottom: TabBar(
            tabs: Tabs,
          ),
        ),
        body: Center(
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 30,
                  left: 30,
                  height: 250,
                  width: 250,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.green[300],
                    child: Text(
                      'Green',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 60,
                  width: 250,
                  height: 250,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.red[400],
                    child: Text(
                      'Red',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 90,
                  width: 250,
                  height: 250,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.purple[300],
                    child: Text(
                      'Purple',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CardPage()));
          },
          child: Icon(
            Icons.gamepad,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
