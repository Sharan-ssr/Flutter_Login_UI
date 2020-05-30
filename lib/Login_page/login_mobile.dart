import 'package:flutter/material.dart';
import 'package:login/Screens/mainscreen.dart';
import 'package:login/Signup/signup.dart';

class LoginMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg2.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              //logo,login
              Container(
                child: Center(
                  child: Text(
                    "LOGO",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              //inputfields
              Container(
                width: 300,
                height: 50,
                child: TextField(
                  onChanged: (value) {},
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
                        onChanged: (value) {},
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
                height: 40,
              ),
              //Email Login
              Container(
                child: Center(
                  child: GestureDetector(
                    child: Text("Or Login by Email-ID"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //social login
              Container(
                width: 300,
                height: 40,
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.blue[500])),
                      onPressed: () {},
                      color: Colors.blue[500],
                      textColor: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Image.asset("images/facebook_icon.png"),
                          Text("Login", style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Image.asset("images/google_icon.png"),
                          Text("Login", style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //login
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.purple)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text("Login", style: TextStyle(fontSize: 14)),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              //signup
              Container(
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                      ),
                      Text("Don't have a account?"),
                      GestureDetector(
                        child: Text(
                          " Register",
                          style: TextStyle(color: Colors.purple),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
