import 'package:flutter/material.dart';
import 'package:workpage/rePay.dart';

class thirdRow extends StatefulWidget {
  const thirdRow({Key? key}) : super(key: key);

  @override
  State<thirdRow> createState() => _thirdRowState();
}

class _thirdRowState extends State<thirdRow> {
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
    return Container(
      height: 155,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        scrollDirection: Axis.horizontal,
        //reverse: true,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          Page(

            selectedContainer: _currentPage == 0 ? 1 : null,
            onPageSelected: () {
              _pageController.jumpToPage(0);
            },
            content: Padding(
              padding: const EdgeInsets.only(
                left:25.0,top: 12, bottom: 15, right: 15,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Total Income',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      // IconButton(
                      //     onPressed: (){},
                      //     icon: Icon(Icons.content_paste_search_outlined),
                      // ),
                      rePayment(),
                    ],
                  ),
                  Text('\$1400.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('+ Increased By 30% since July 2022',
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.indigo,
          ),
          Page(
            selectedContainer: _currentPage == 1 ? 2 : null,
            onPageSelected: () {
              _pageController.jumpToPage(1);
            },
            content: Center(
              child: Text('Page 2 Content'),
            ),
            backgroundColor: Colors.blue,
          ),
          Page(
            selectedContainer: _currentPage == 2 ? 3 : null,
            onPageSelected: () {
              _pageController.jumpToPage(2);
            },
            content: Center(
              child: Text('Page 3 Content'),
            ),
            backgroundColor: Colors.green,
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
  final Color backgroundColor;


  Page(
      {this.selectedContainer,
      required this.onPageSelected,
      required this.content,
      required this.backgroundColor,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPageSelected,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),

        child: Column(
          children: [
            Expanded(child: content),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        color: selectedContainer == 1 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        color: selectedContainer == 2 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        color: selectedContainer == 3 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
