import 'package:flutter/material.dart';

class RedioSelector extends StatefulWidget {
  @override
  _RedioSelectorState createState() => _RedioSelectorState();

  RedioSelector();
}

class _RedioSelectorState extends State<RedioSelector> {
  var groupValue = 1;

  onTab(val) {
    groupValue = val;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Radio(
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            activeColor: Color(0xFFFA4A0C),
          ),
          Radio(
            value: 2,
            groupValue: groupValue,
            onChanged: (value) {
              setState(
                () {
                  groupValue = value;
                },
              );
            },
            activeColor: Color(0xFFFA4A0C),
          ),
          Radio(
            value: 3,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            activeColor: Color(0xFFFA4A0C),
          ),
        ],
      ),
    );
  }
}
