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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: new EdgeInsets.all(10.0),
            width: size.width*0.7638,
            height: size.height*0.276,
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0,.15),
                  blurRadius: 4.0, // has the effect of softening the shadow
                  spreadRadius: 2.0, // has the effect of extending the shadow
                  offset: Offset(
                    4.0, // horizontal, move right 10
                    4.0, // vertical, move down 10
                  ),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0,.15),
                  blurRadius: 4.0, // has the effect of softening the shadow
                  spreadRadius: 2.0, // has the effect of extending the shadow
                  offset: Offset(
                    -2.0, // horizontal, move right 10
                    -2.0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Today's Earnings",style: TextStyle(fontSize: 19),),
                Text("₹500",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(
            height: size.height*0.025,
          ),
          ExpandedTile(),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            height: size.height*0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0,.15),
                  blurRadius: 4.0, // has the effect of softening the shadow
                  spreadRadius: 2.0, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 1
                    4.0, // vertical, move down 4
                  ),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Store Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                      Spacer(),
                      Text("May 4 2020, 02:35 PM",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Text("Moyalali Name",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                      Spacer(),
                      Text("₹150",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class ExpandedTile extends StatelessWidget {
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      elevation: 3,
      margin: new EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: ExpansionTile(
        backgroundColor: Colors.white,
        title: _buildTitle(),
        trailing: SizedBox(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text("Herzlich Willkommen"),
                Spacer(),
                Icon(Icons.check),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text("Das Kursmenu"),
                Spacer(),
                Icon(Icons.check),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Store Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
              Spacer(),
              Text("May 4 2020, 02:35 PM",style: TextStyle(fontSize: 15),),
            ],
          ),
          SizedBox(
            height: size.height*0.02,
          ),
          Row(
            children: <Widget>[
              Text("Moyalali Name",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
              Spacer(),
              Text("₹150",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            ],
          )
        ],
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
