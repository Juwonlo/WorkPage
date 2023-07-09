import 'package:flutter/material.dart';
import 'package:workpage/inComepage.dart';
import 'package:workpage/thirdRow.dart';
import 'lastRow.dart';

class landPage extends StatefulWidget {
  const landPage({Key? key}) : super(key: key);

  @override
  State<landPage> createState() => _landPageState();
}

class _landPageState extends State<landPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              // child: Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ///First Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(

                        child: ListTile(
                          leading:Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
              ),
                          // CircleAvatar(
                          //     backgroundColor: Colors.blue,
                          //   ),
                          title: Text('Welcome!',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle:Text('Hey there,John',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('UserID: 12345678',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                              ),
                            ),
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.settings_outlined,
                              size: 32,
                              ),
                            ),
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.notifications_outlined,
                              size: 32,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ///Second Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      DropdownWidget(),
                      Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(0, 0, 50, 9),
                        ),
                        child: Center(
                          child: Text('Request Payment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ///Third Row
                  thirdRow(),
                  SizedBox(
                    height: 15,
                  ),
                  ///Fourth Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 160,
                        height: 50,
                        child: Center(
                          child: Text('View Custom Report',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigoAccent,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.indigoAccent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Recent Activities',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      Text('View All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigoAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  lastRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
