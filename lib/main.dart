// import 'package:flutter/material.dart';
// import 'package:workpage/inComepage.dart';
// import 'package:workpage/rePay.dart';
//
// import 'lastRow.dart';
//
// void main() {
//   runApp( MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: '',),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        //appBar: AppBar(),
//       body: SafeArea(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             physics: BouncingScrollPhysics(),
//             child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             // child: Container(
//             //   width: MediaQuery.of(context).size.width,
//             //   height: MediaQuery.of(context).size.height,
//               child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 ///First Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     // ListTile(
//                     //   leading: CircleAvatar(),
//                     //   title: Text('Welcome!'),
//                     //   subtitle:Text('Hey there,John'),
//                     // ),
//                     Container(
//                       child: Row(
//                         children: <Widget>[
//                           Text('User ID: 12345678'),
//                           //Icon(Icons.)
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 ///Second Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     DropdownWidget(),
//                     Container(
//                       width: 140,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//                 ///Third Row
//                 // Container(
//                 //   height: 200,
//                 //   width: MediaQuery.of(context).size.width,
//                 //   decoration: BoxDecoration(
//                 //     color: Colors.indigo,
//                 //
//                 //   ),
//                 // ),
//                 ///Fourth Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     Container(
//                       width: 150,
//                       height: 40,
//                       child: Center(
//                           child: Text('View Custom Report',
//                             style: TextStyle(
//                               color: Colors.indigoAccent,
//                             ),
//                           ),
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.indigoAccent,
//                           width: 1,
//                         ),
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text('Recent Activities',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                     )
//                     ),
//                     Text('View All',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.indigoAccent,
//                       decoration: TextDecoration.underline,
//                     ),
//                     ),
//                   ],
//                 ),
//                 lastRow(),
//               ],
//         ),
//             ),
//           ),
//         ),
//         ),
//       //),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView with Selection'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          Page(
            //child: Container(),
            selectedContainer: _currentPage == 0 ? 1 : null,
            onPageSelected: () {
              _pageController.jumpToPage(0);
            },
            content: Center(
              child: Text('Page 1 Content'),
            ),
          ),
          Page(
            selectedContainer: _currentPage == 1 ? 2 : null,
            onPageSelected: () {
              _pageController.jumpToPage(1);
            },
            content: Center(
              child: Text('Page 2 Content'),
            ),
          ),
          Page(
            selectedContainer: _currentPage == 2 ? 3 : null,
            onPageSelected: () {
              _pageController.jumpToPage(2);
            },
            content: Center(
              child: Text('Page 3 Content'),
            ),
          ),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  final int? selectedContainer;
  final VoidCallback onPageSelected;
  final Widget content;

  Page({this.selectedContainer, required this.onPageSelected,required this.content});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPageSelected,
      child: Container(
        color: Colors.white,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: selectedContainer == 1 ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: selectedContainer == 2 ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: selectedContainer == 3 ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}