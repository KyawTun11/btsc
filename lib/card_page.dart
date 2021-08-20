import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
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
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.music_note,
                  size: 35,
                )),
                Tab(
                    icon: Icon(
                  Icons.safety_divider,
                  size: 35,
                )),
                Tab(
                    icon: Icon(
                  Icons.face_rounded,
                  size: 35,
                )),
              ],
            ),
            title: const Text('Card'),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Positioned(
                    child: Card(
                      color: Colors.amberAccent,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {},
                        child: const SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Text(
                            'Amber Accent',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Card(
                      color: Colors.greenAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {},
                        child: const SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Text(
                            "Green Accent",
                            semanticsLabel: 'Double dollars',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Card(
                      color: Colors.purpleAccent,
                      child: InkWell(
                        splashColor: Colors.deepPurple,
                        onTap: () {},
                        child: const SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Text(
                            "Purple Accent",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Card(
                      color: Colors.grey,
                      child: InkWell(
                        splashColor: Colors.white70,
                        onTap: () {},
                        child: const SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Text(
                            "Grey",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Card(
                      color: Colors.blueAccent,
                      child: InkWell(
                        splashColor: Colors.blueGrey,
                        onTap: () {},
                        child: const SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Text(
                            r"$$",
                            semanticsLabel: 'Double dollars',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.lightGreenAccent,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                icon: Icon(Icons.safety_divider),
                label: "Safety",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: "Book",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.share),
                label: "Share",
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
          ),
        ),
      ),
    );
  }
}
