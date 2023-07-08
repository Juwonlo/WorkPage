
import 'package:flutter/material.dart';

class rePayment extends StatefulWidget {
  const rePayment({Key? key}) : super(key: key);

  @override
  State<rePayment> createState() => _rePaymentState();
}

class _rePaymentState extends State<rePayment> {

  String selectval = "Request Payment";

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 140,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
                child:DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton(
                      value: null,
                      items: [ //add items in the dropdown
                        DropdownMenuItem(
                            child: Text("Canada"),
                            value: "Canada"
                        ),
                        DropdownMenuItem(
                          child: Text("Russia"),
                          value: "Russia",
                        )
                      ],
                      onChanged: (value){ //get value when changed
                        print("You have selected $value");
                      },
                      icon: SizedBox.shrink(),

                      dropdownColor: Colors.white, //dropdown background color
                      underline: Container(), //remove underline
                      isExpanded: true, //make true to make width 100%
                    ),
                  ),
                ),
    );
  }
}
