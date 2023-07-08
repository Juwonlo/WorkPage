
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class DropdownItem {
  final IconData icon;
  final String text;

  DropdownItem({required this.icon, required this.text});
}


class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  DropdownItem? selectedItem;

  List<DropdownItem> dropdownItems = [
    DropdownItem(icon: Icons.home, text: 'Home'),
    DropdownItem(icon: Icons.business, text: 'Business'),
    DropdownItem(icon: Icons.school, text: 'School'),
    DropdownItem(icon: Icons.settings, text: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Income',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: -3,
              child: PopupMenuButton<DropdownItem>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                icon: Icon(
                  Icons.account_balance_wallet_rounded, // Replace with your desired icon
                  color: Colors.blue,
                  size: 22, // Replace with your desired size
                ),
                onSelected: (DropdownItem item) {
                  setState(() {
                    selectedItem = item;
                  });
                },
                offset: Offset(-80, 17),
                itemBuilder: (BuildContext context) {
                  return dropdownItems.map((DropdownItem item) {
                    return PopupMenuItem<DropdownItem>(
                      value: item,
                      child: Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedItem == item ? Colors.black : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(
                                item.icon, color: selectedItem == item ? Colors.blue : null,
                              size: 30,
                            ),
                            SizedBox(width: 20.0),
                            Text(
                              item.text,
                              style: TextStyle(
                                fontSize: 22,
                                color: selectedItem == item ? Colors.blue : null,
                                fontWeight: selectedItem == item ? FontWeight.bold : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList();
                },
              ),
            ),
          //),
        ],
      ),
    );
  }
}
