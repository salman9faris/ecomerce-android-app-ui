import 'package:flutter/material.dart';
import 'package:salmanapp/widgets/appBar.dart';

class Cartpage extends StatelessWidget {
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
                "Cart",
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
                child: Column(
                    children: <Widget>[Cartitem(), Cartitem(), Cartitem()]),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

class Cartitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Column(children: <Widget>[
        Card(
          elevation: 7,
          shadowColor: Colors.lightGreenAccent,
          //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(
                  Icons.delete_forever,
                  size: 30,
                ),
                title: Text('Item1'),
                subtitle: Text('new arrival'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
