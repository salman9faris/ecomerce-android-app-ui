import 'package:flutter/material.dart';
import 'package:salmanapp/pages/orderPage.dart';
import 'package:salmanapp/widgets/appBar.dart';
import 'package:salmanapp/widgets/profile_widget.dart';
import 'package:salmanapp/widgets/cartPage.dart';
import 'package:salmanapp/widgets/item.dart';
import 'package:salmanapp/widgets/basicWidget.dart';
//import 'package:salmanapp/widgets/multiChildLayout.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool isSearching = false;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Homepage();
      case 1:
        return Category();
      case 2:
        return Cartpage();
      case 3:
        return Profilepage();

        break;
      default:
        return Homepage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        title: !isSearching
            ? Text(
                "oxUY",
                style: TextStyle(
                    color: Colors.black.withOpacity(1.0), fontSize: 28),
              )
            : TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "search here",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent),
                  ),
                ),
              ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      this.isSearching = false;
                    });
                  })
              : IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      this.isSearching = true;
                    });
                  }),
        ],
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,

            unselectedItemColor: Colors.green,
            selectedItemColor: Colors.blueGrey,

            unselectedFontSize: 12,
            selectedFontSize: 12,
            iconSize: 20,
            currentIndex: _currentIndex,
            onTap: (value) {
              _currentIndex = value;
              setState(() {});
            },
            // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.category),
                title: new Text(
                  'category',
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.shopping_cart),
                title: new Text('cart'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text('profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
