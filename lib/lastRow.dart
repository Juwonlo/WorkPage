
import 'package:flutter/material.dart';

class lastRow extends StatefulWidget {
  const lastRow({Key? key}) : super(key: key);

  @override
  State<lastRow> createState() => _lastRowState();
}

class _lastRowState extends State<lastRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ///First Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.green,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 85,
                child: Center(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text('Sucessful Payments from EarniPay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text('Fri Jun,2022 GMT 13:00',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
    padding:EdgeInsets.only(bottom: 23),
              child: Text('\$ 10.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ///second Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.green,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 85,
                child: Center(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text('Sucessful Payments from EarniPay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text('Fri Jun,2022 GMT 13:00',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(bottom: 23),
              child: Text('\$ 10.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ///third row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.green,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 85,
                child: Center(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text('Sucessful Payments from EarniPay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text('Fri Jun,2022 GMT 13:00',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(bottom: 23),
              child: Text('\$ 10.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ///fouth row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.green,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 85,
                child: Center(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text('Sucessful Payments from EarniPay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text('Fri Jun,2022 GMT 13:00',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(bottom: 23),
              child: Text('\$ 10.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ///fifth Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.green,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 85,
                child: Center(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text('Sucessful Payments from EarniPay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text('Fri Jun,2022 GMT 13:00',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(bottom: 23),
              child: Text('\$ 10.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
