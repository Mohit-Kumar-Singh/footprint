// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:footprints/pages/homepage.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:kf_drawer/kf_drawer.dart';

// class MainWidget extends StatefulWidget {
//   MainWidget({Key? key}) : super(key: key);

//   @override
//   _MainWidgetState createState() => _MainWidgetState();
// }

// class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
//   late KFDrawerController _drawerController;

//   @override
//   void initState() {
//     super.initState();
//     _drawerController = KFDrawerController(
//       initialPage: MainPage(),
//       //  initialPage: ClassBuilder.fromString('MainPage'),
//       items: [
//         KFDrawerItem.initWithPage(
//           text: Text('MAIN', style: TextStyle(color: Colors.white)),
//           icon: Icon(Icons.home, color: Colors.white),
//           page: HomePage(),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: KFDrawer(
// //        borderRadius: 0.0,
// //        shadowBorderRadius: 0.0,
// //        menuPadding: EdgeInsets.all(0.0),
// //        scrollable: true,
//         controller: _drawerController,
//         header: Align(
//           alignment: Alignment.centerLeft,
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             width: MediaQuery.of(context).size.width * 0.6,
//             child: Image.asset(
//               'assets/logo.png',
//               alignment: Alignment.centerLeft,
//             ),
//           ),
//         ),
//         footer: KFDrawerItem(
//           text: Text(
//             'SIGN IN',
//             style: TextStyle(color: Colors.white),
//           ),
//           icon: Icon(
//             Icons.input,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.of(context).push(CupertinoPageRoute(
//               fullscreenDialog: true,
//               builder: (BuildContext context) {
//                 return HomePage();
//                 //return AuthPage();
//               },
//             ));
//           },
//         ),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color.fromRGBO(255, 255, 255, 1.0),
//               Color.fromRGBO(44, 72, 171, 1.0)
//             ],
//             tileMode: TileMode.repeated,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomDrawer extends StatefulWidget {
//   const CustomDrawer({Key? key}) : super(key: key);

//   @override
//   _CustomDrawerState createState() => _CustomDrawerState();
// }

// class _CustomDrawerState extends State<CustomDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           // UserAccountsDrawerHeader(
//           //   accountName: Text('User Name'),
//           //   accountEmail: Text('user.name@email.com'),
//           //   currentAccountPicture: CircleAvatar(
//           //     backgroundColor: Colors.white,
//           //     child: FlutterLogo(size: 42.0),
//           //   ),
//           //   otherAccountsPictures: <Widget>[
//           //     CircleAvatar(
//           //       backgroundColor: Colors.yellow,
//           //       child: Text('A'),
//           //     ),
//           //     CircleAvatar(
//           //       backgroundColor: Colors.red,
//           //       child: Text('B'),
//           //     )
//           //   ],
//           // ),
//           Container(
//             color: Colors.pinkAccent,
//             height: MediaQuery.of(context).size.height * .2,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   child: Text('M'),
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * .02,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Hello Mohit',
//                         style: GoogleFonts.lato(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         )
//                         //TextStyle(fontSize: 20, color: Colors.white),
//                         ),
//                     Text('mohit1911048@akgec.ac.in'),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           ListTile(
//             title: const Text('To page 1'),
//             //  onTap: () => Navigator.of(context).push(_NewPage(1)),
//           ),
//           ListTile(
//             title: const Text('To page 2'),
//             //   onTap: () => Navigator.of(context).push(_NewPage(2)),
//           ),
//           ListTile(
//             title: const Text('other drawer item'),
//             onTap: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
