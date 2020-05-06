import 'package:flutter/cupertino.dart';
import '../error.dart';
import 'package:flutter/material.dart';
import '../HomePageTabs/NestedTabBar.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white10,
      child: SingleChildScrollView(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: new BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0,.25),
                blurRadius: 4.0, // has the effect of softening the shadow
                spreadRadius: 2.0, // has the effect of extending the shadow
                offset: Offset(
                  4.0, // horizontal, move right 10
                  4.0, // vertical, move down 10
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

printer(size) {
  debugPrint("Height:" + size.height.toString());
  debugPrint("\nWidth:" + size.width.toString());
}

//I/flutter ( 5416): Height:759.2727272727273
//I/flutter ( 5416):
//I/flutter ( 5416): Width:392.72727272727275
