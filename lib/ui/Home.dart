import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text("LOL"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.save), onPressed: null),
          ],
        ),
        body: new Center(
          child: new customButton(),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => debugPrint("press"),
          backgroundColor: Colors.lightGreen,
          tooltip: "Going up",
          child: new Icon(Icons.call_missed),),
        bottomNavigationBar: new BottomNavigationBar(items:[
        new BottomNavigationBarItem(icon: new Icon(Icons.backspace),
        title: new Text("back")),
    new BottomNavigationBarItem(icon: new Icon(Icons.home),title:new Text("Home")),
    new BottomNavigationBarItem(icon: new Icon(Icons.message),title:new Text("Message"))
    ],onTap:(int i) =>debugPrint("Touched $i")
    )
    ,
    );

  }

}

class customButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap:() {
        final s = new SnackBar(content: new Text("hello"),
        backgroundColor:Colors.green);
        Scaffold.of(context).showSnackBar(s);
      },
      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: new BorderRadius.circular(5.5)
        ),
        child: new Text("First Button"),
      ),
    );
  }

}
