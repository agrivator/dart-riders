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
          ExpandedTile(),
          ExpandedTile(),
          ExpandedTile(),
          ExpandedTile(),
          ExpandedTile(),
        ],
      ),
    );
  }
}


class ExpandedTile extends StatelessWidget {
  var size;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent,splashColor: Colors.transparent,  highlightColor: Colors.transparent);
    size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      elevation: 3,
      margin: new EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Theme(
          data: theme,
          child: ExpansionTile(
            backgroundColor: Colors.white,
            title: _buildTitle(),
            trailing: SizedBox(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
                child: Row(
                  children: <Widget>[
                    Text("Flat No. 12B, Skyline", style: TextStyle(fontSize: 16),),
                    Spacer(),
                    Text("2 KM", style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.04),
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    FlatButton(
                      child: Text("ACCEPT",style: TextStyle(color: Colors.green,fontSize: 19),),
                      onPressed: (){debugPrint("Accept Pressed");},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      highlightColor: Colors.transparent,
                    ),
                    FlatButton(
                      child: Text("REJECT",style: TextStyle(color: Colors.red,fontSize: 19),),
                      onPressed: (){debugPrint("Reject Pressed");},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      highlightColor: Colors.transparent,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(left: size.width*0.01,top: size.height*0.02, bottom: size.height*0.02),
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
            height: size.height*0.025,
          ),
          Row(
            children: <Widget>[
              Text("User Name",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
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
