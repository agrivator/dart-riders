import 'package:dartriders/Tabs/ProfileTab/ContactUs.dart';
import 'package:dartriders/Tabs/ProfileTab/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ProfileTab/About.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileTab> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                    Spacer(),
                    ClipOval(
                          child: Image.asset(
                            'images/user.jpg',
                            width: 40,height: 40,
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your Profile",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF78b122),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/user.jpg"),
                    radius: 60.0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF2f2e41),
                        child: GestureDetector(
                          onTap: () => {print("change profile photo")},
                          child: new Icon(
                            Icons.camera_alt,
                            color: Color(0xFF78b122),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        enabled: _status,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Rider Name",
                          prefixIcon: Icon(Icons.person),
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Rider Name required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Vehicle Name",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.motorcycle),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Vehicle Name required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Vehicle Reg. No",
                          prefixIcon: Icon(Icons.format_list_numbered),
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Vehicle Reg. No';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "License Number",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.library_books),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*License No required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        keyboardType: TextInputType.number,
                        maxLines: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Phone",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.phone_android),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Phone number required';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        keyboardType: TextInputType.number,
                        maxLines: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Total Earnings",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.monetization_on),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ContactUs()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Contact Us",
                          style: TextStyle(color: Color(0xFF78b122)),
                        ),
                        borderSide: BorderSide(color: Color(0xFF78b122)),
                      ),
                      OutlineButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "About",
                          style: TextStyle(color: Color(0xFF78b122)),
                        ),
                        borderSide: BorderSide(color: Color(0xFF78b122)),
                      ),
                      OutlineButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );
                        },
                        borderSide: BorderSide(color: Color(0xFF78b122)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Settings",
                          style: TextStyle(color: Color(0xFF78b122)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.mode_edit, color: Color(0xFF78b122), size: 30.0),
          backgroundColor: Color(0xFF2f2e41),
        ),
      ),
    );
  }
}
