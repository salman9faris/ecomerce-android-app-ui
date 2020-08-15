import 'package:flutter/material.dart';
import 'package:salmanapp/pages/addressPage.dart';
import 'package:salmanapp/pages/orderPage.dart';
import 'package:salmanapp/pages/accountPage.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: 150.0,

            floating: false,
            pinned: true,
            automaticallyImplyLeading:
                false, // this will hide Drawer hamburger icon
            actions: <Widget>[Container()],
            backgroundColor: Colors.greenAccent,
            flexibleSpace: new FlexibleSpaceBar(
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(
                  top: 0,
                  right: 5,
                  left: 5,
                  bottom: 10,
                ),
                child: Column(children: <Widget>[
                  Myaccount(),
                  Myorders(),
                  Address(),
                  SizedBox(
                    width: 20,
                    height: 60,
                  ),
                  Logout(),
                ]),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

class Myorders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .95,
            height: 75,
            child: RaisedButton(
              elevation: 6,
              color: Colors.white,
              splashColor: Colors.white10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Orderpage()),
                );
              },
              //color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.card_travel,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "My Orders",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .95,
            height: 75,
            child: RaisedButton(
              elevation: 6,
              color: Colors.white,
              splashColor: Colors.white10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Addresspage()),
                );
              },
              //color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.person_pin_circle,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Manage Address",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}

class Myaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .95,
            height: 75,
            child: RaisedButton(
              elevation: 6,
              color: Colors.white,
              splashColor: Colors.white10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Accountpage()),
                );
              },
              //color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.person_pin_circle,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "My Account",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .95,
            height: 50,
            child: RaisedButton(
              elevation: 9,
              color: Colors.white,
              splashColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {},
              //color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Log out",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
