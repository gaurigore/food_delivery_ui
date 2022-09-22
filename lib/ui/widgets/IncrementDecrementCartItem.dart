import 'package:flutter/material.dart';

class IncrementDecrementCartItem extends StatefulWidget {
  @override
  _IncrementDecrementCartItemState createState() =>
      _IncrementDecrementCartItemState();
}

class _IncrementDecrementCartItemState
    extends State<IncrementDecrementCartItem> {
  int _item = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 25,
      decoration: BoxDecoration(
          color: Color(0xFFFA4A0C), borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 14,
                  ),
                  onPressed: () {
                    setState(() {
                      _item++;
                    });
                  }),
            ),
          ),
          Center(
            child: Text(
              "$_item",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          Expanded(
            child: Center(
              child: IconButton(
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 14,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_item > 0) {
                        _item--;
                      }
                    });
                  }),
            ),
          ),
        ],
      ),
    );

    /*Container(
                     width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,borderRadius: BorderRadius.circular(24)
                    ),
                    child: Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,size: 10,
                            ),
                            onPressed: () {

                              setState(() {
                                _item++;


                              });

                            }),
                        Text("$_item"),
                        IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: Colors.black,size: 10,
                            ),
                            onPressed: () {

                              setState(() {
                                if(_item>0) {
                                  _item--;
                                }


                              });

                            }),

                      ],
                    ),
                  );
    */
  }
}
