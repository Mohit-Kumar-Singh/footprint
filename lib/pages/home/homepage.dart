import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final _pages = <Widget>[
      Container(
        alignment: Alignment.center,
        child: Center(
          child: ElevatedButton(
              onPressed: () async {
                // await _prefService.removeCache("password").whenComplete(() {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => FirebaseLogin()));
                // });
              },
              child: Text('signout')),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text('events'),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Footprints"),
      ),
      // drawer: CustomDrawer(),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        padding: const EdgeInsets.all(12),
        snakeViewColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Events'),
        ],
        currentIndex: _currentindex,
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: _pages[_currentindex],
      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () async {
      //         await _prefService.removeCache("password").whenComplete(() {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (_) => FirebaseLogin()));
      //         });
      //       },
      //       child: Text('signout')),
      // ),
    );
  }
}
