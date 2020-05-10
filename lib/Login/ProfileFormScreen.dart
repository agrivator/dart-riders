import 'package:dartriders/Tabs/Hometab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileFormScreen extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileFormScreen> {
  final _profileFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/user.jpg"),
                      radius: 80.0,
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
                ),
                Form(
                  key: _profileFormKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Rider Name",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Rider name required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Vehicle No",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.motorcycle),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Vehicle No required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Address",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.add_location),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Address required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    final form = _profileFormKey.currentState;
                    if (form.validate()) {
                      form.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeTab()),
                      );
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFF2f2e41),
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                      color: Color(0xFF78b122),
                      letterSpacing: 1.5,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
