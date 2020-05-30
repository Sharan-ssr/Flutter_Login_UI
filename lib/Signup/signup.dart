import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Back
                Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Row(
                      children: <Widget>[
                        ClipOval(
                          child: Material(
                            color: Colors.purple, // button color
                            child: InkWell(
                              splashColor: Colors.purple, // inkwell color
                              child: SizedBox(
                                  width: 46,
                                  height: 46,
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  )),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    )),
                //logo,Register
                Container(
                  child: Center(
                    child: Text(
                      "LOGO",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //inputfields
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.verified_user,
                          color: Colors.grey,
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "User Name",
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "Email",
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "Password",
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "Mobile Number",
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        height: 40,
                        child: OutlineButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () => {},
                            color: Colors.purple,
                            padding: EdgeInsets.all(10.0),
                            child: Text("Send OTP")),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: TextField(
                          decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                              ),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey),
                              hintText: "OTP",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "Address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 140,
                    child: OutlineButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () => {},
                        color: Colors.purple,
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.gps_fixed),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Get Address")
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //Signup
                Container(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.purple)),
                    onPressed: () {},
                    color: Colors.purple,
                    textColor: Colors.white,
                    child: Text("Signup", style: TextStyle(fontSize: 14)),
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
