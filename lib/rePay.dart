
import 'package:flutter/material.dart';

class rePayment extends StatefulWidget {
  const rePayment({Key? key}) : super(key: key);

  @override
  State<rePayment> createState() => _rePaymentState();
}

class _rePaymentState extends State<rePayment> {

  String? selectedItem;

  List<String> dropdownItems = ['Item 1', 'Item 2'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.menu,
      color: Colors.white,
      ),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'Home',
            child: ListTile(
              leading: Icon(Icons.send,
              size: 31,
                color: Colors.black,
              ),
              title: Text('Send payment link',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Settings',
            child: ListTile(
              leading: Icon(Icons.add_circle_rounded,
                size: 31,
                color: Colors.black,
              ),
              title: Text('Create new invoice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ];
      },
      offset: Offset(20, -52),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onSelected: (String value) {
        if (value == 'Home') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else if (value == 'Settings') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
          );
        }
      },
    );

  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings Page'),
      ),
    );
  }
}

