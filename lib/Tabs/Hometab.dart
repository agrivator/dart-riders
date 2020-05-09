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
  var x1=0;
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent,splashColor: Colors.transparent,  highlightColor: Colors.transparent);
    return SingleChildScrollView(
          child: x1==0?Column(
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
          Card(
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
                  title: Padding(
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
                  ),
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
                            child: Text("SHOW STATUS",style: TextStyle(color: Colors.green,fontSize: 19),),
                            onPressed: ()=>
                              setState(() =>x1=1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
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
                  title: Padding(
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
                  ),
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
                            child: Text("SHOW STATUS",style: TextStyle(color: Colors.green,fontSize: 19),),
                            onPressed: ()=>
                                setState(() =>x1++),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
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
                  title: Padding(
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
                  ),
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
                            child: Text("SHOW STATUS",style: TextStyle(color: Colors.green,fontSize: 19),),
                            onPressed: ()=>
                                setState(() =>x1=1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
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
                  title: Padding(
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
                  ),
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
                            child: Text("SHOW STATUS",style: TextStyle(color: Colors.green,fontSize: 19),),
                            onPressed: ()=>
                                setState(() =>x1++),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
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
                  title: Padding(
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
                  ),
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
                            child: Text("SHOW STATUS",style: TextStyle(color: Colors.green,fontSize: 19),),
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Error()),);},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
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
                  title: Padding(
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
                  ),
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
                            child: Text("SHOW STATUS",style: TextStyle(color: Colors.green,fontSize: 19),),
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Error()),);},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ): Column(
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
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                elevation: 3,
                margin: new EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Theme(
                    data: theme,
                    child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Store A\nManarcad Kavala",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                                Spacer(),
                                Text("May 4 2020, 02:35 PM",style: TextStyle(fontSize: 15),),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("to",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                                Spacer(),
                                ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    child: Image.asset("images/storea.jpg",width: 75,height: 75,)
                                ),
                              ],
                            ),
                            Row(
                                children: <Widget>[
                                  Text("Chrisbin Sunny",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                                  Spacer(),
                                  Text("₹150",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Text("Pampady,kottayam",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                  Spacer(),
                                  Text("2km",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                ]
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width*0.4,
                            child: DropdownButton(
                              items: [
                                DropdownMenuItem(
                                  child: Text("Items")),
                                DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                          child: Row(
                                            children: <Widget>[
                                          Image.asset('images/food.jpg',width: 55,height: 55,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                              child: Text('Item1\n\u20b9100')),
                                      ],
                                  ))
                                ),
                                DropdownMenuItem(
                                    child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/food.jpg',width: 55,height: 55,),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Text('Item2\n\u20b9100')),
                                          ],
                                        ))
                                ),
                                DropdownMenuItem(
                                    child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/food.jpg',width: 55,height: 55,),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Text('Item3\n\u20b9100')),
                                          ],
                                        ))
                                ),
                                DropdownMenuItem(
                                    child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/food.jpg',width: 55,height: 55,),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Text('Item4\n\u20b9100')),
                                          ],
                                        ))
                                ),
                                DropdownMenuItem(
                                    child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/food.jpg',width: 55,height: 55,),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: Text('Item1\n\u20b9100')),
                                          ],
                                        ))
                                ),
                              ],
                              onChanged: (value) {
                              },
                              hint: Text('items'),
                            ),
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 5),
                            child: Text("Estimated Time : 28min",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: size.width*0.04),
                              child: Row(
                                children: <Widget>[
                                  Spacer(),
                                  FlatButton(
                                    child: Text("ACCEPT",style: TextStyle(color: Colors.green,fontSize: 19),),
                                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Error()),);},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                    highlightColor: Colors.transparent,
                                  ),
                                  FlatButton(
                                    child: Text("REJECT",style: TextStyle(color: Colors.red,fontSize: 19),),
                                    onPressed: ()=>setState(()=>x1=0),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                    highlightColor: Colors.transparent,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                  ),
                ),
              ),
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
