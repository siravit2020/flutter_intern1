import 'package:flutter/material.dart';
import 'screen.dart';

class PageNavigation extends StatelessWidget {
  const PageNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          color: Colors.red,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page1()),
            );
          },
          child: Text("Page1"),
        ),
        RaisedButton(
          color: Colors.green,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          },
          child: Text("Page2"),
        ),
        RaisedButton(
          color: Colors.orange,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page3()),
            );
          },
          child: Text("Page3"),
        ),
      ],
    );
  }
}
