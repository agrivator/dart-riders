import 'package:dartriders/Tabs/ProfileTab.dart';
import 'package:flutter/cupertino.dart';
import '../error.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoreUserRoad extends StatefulWidget {
  @override
  _StoreUserRoadState createState() => _StoreUserRoadState();
}

class _StoreUserRoadState extends State<StoreUserRoad> {
  @override
  var x1=0;
  Position _currentPosition;
  final Geolocator geoLocator = Geolocator()..forceAndroidLocationManager;
  String _currentAddress = "Location not Available!";

  Widget build(BuildContext context) {
    _getCurrentLocation();
    var size = MediaQuery.of(context).size;
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent,splashColor: Colors.transparent,  highlightColor: Colors.transparent);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
          child: Center(
            child: AppBar(
              leading: null,
              title: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset('images/location_icon.svg', width: 22, height: 22, color: Colors.green,),
                    if (_currentPosition != null)
                      Text(
                        _currentAddress,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    Spacer(),
                    ClipOval(
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ProfileTab())),
                          child: Image.asset(
                            'images/user.jpg',width: 40,height: 40,
                          ),
                      ),
                    )
                  ],
                ),
              ),
              backgroundColor: Colors.white10,
              elevation: 0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: x1==0?Column(
            children: <Widget>[
              Container(
                margin: new EdgeInsets.all(10.0),
                width: size.width*0.7638,
                height: size.height*0.276,
                child: Align(
                  alignment: Alignment.center,
                    child: Text("Google Map here",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(
                height: size.height*0.15,
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
                            Text("Store A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                            Spacer(),
                            Text("May 4 2020, 02:35 PM",style: TextStyle(fontSize: 15),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("Manarcad Kavala\n2km",style: TextStyle(fontSize: 15),),
                            Spacer(),
                            ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                child: Image.asset("images/storea.jpg",width: 75,height: 75,)
                            ),
                          ],
                        ),
                        Row(
                            children: <Widget>[
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
                          ),
                        ),
                              Spacer(),
                              InkWell(
                                onTap: ()=>setState(()=>x1=1),
                                child: Image.asset('images/squaretick.jpg',width: 40,height: 40,),
                              )
                            ]
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5),
                            child: Text("REACHED.\nNow start Gathering",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
              :x1==1?Column(
            children: <Widget>[
              Container(
                margin: new EdgeInsets.all(10.0),
                width: size.width*0.7638,
                height: size.height*0.276,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Google Map here",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(
                height: size.height*0.15,
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
                            Text("Bivin V Varghese",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                            Spacer(),
                            Text("May 4 2020, 02:35 PM",style: TextStyle(fontSize: 15),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("Pampady Address,P.O, veedu \n2km",style: TextStyle(fontSize: 15),),
                            Spacer(),
                            ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                child: Image.asset("images/user.jpg",width: 75,height: 75,)
                            ),
                          ],
                        ),
                        Row(
                            children: <Widget>[
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
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: ()=>setState(()=>x1=2),
                                child: Image.asset('images/squaretick.jpg',width: 40,height: 40,),
                              )
                            ]
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5),
                            child: Text("TIME TO REACH : 28 MINs",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ):
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                child: Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  SvgPicture.asset('images/checkcircle.svg',width: 150,height: 150,color: Color(0xFFA4CF70),),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  Text('Good Job',style: TextStyle(fontSize: 19),),
                  Text('Another happy customer. Yay!',style: TextStyle(fontSize: 19),),
                  SizedBox(
                    height: size.height*0.15,
                  ),
                  Text('Earned: \u20b950',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                ],
              )
    )
    );
  }
  _getCurrentLocation() {
    geoLocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geoLocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        " ${place.subLocality}, ${place.locality}, ${place.administrativeArea}";
      });
    } catch (e) {
      print(e);
    }
  }
}
