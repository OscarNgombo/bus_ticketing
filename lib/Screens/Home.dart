import 'package:bus_ticketing/Shared/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dincrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 32),
            width: 414,
            height: 896,
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius:
                    new BorderRadius.all(const Radius.circular(55.0))),
            child: CustomAppBar(),
          ),
          Container(
            padding: EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 250),
                  width: 362,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Image(
                            image: AssetImage('images/from.png'),
                          ),
                          title: Text(
                            'From',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff8A959E),
                                fontFamily: 'Rubik'),
                          ),
                          subtitle: Text(
                            'Los Angels',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Rubik'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.only(top: 20),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: GestureDetector(
                            child: Image(
                              image: AssetImage('images/locate.png'),
                            ),
                          ),
                          title: Text(
                            'To',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff8A959E),
                                fontFamily: 'Rubik'),
                          ),
                          subtitle: Text(
                            'New York City',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Rubik'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 300, left: 250),
            child: Image(
              image: AssetImage('images/SwipeBTN.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 450,
            ),
            child: Card(
              // elevation: 5,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: GestureDetector(
                      child: Image(
                        image: AssetImage('images/pass.png'),
                      ),
                    ),
                    title: Text(
                      'Pessengers',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff8A959E),
                          fontFamily: 'Rubik'),
                    ),
                    subtitle: GestureDetector(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new IconButton(
                              icon: new Icon(
                                Icons.remove_circle,
                                color: Color(0xffFFE434).withOpacity(0.3),
                              ),
                              onPressed: _dincrementCounter,
                            ),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            Text(
                              _counter.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontFamily: 'Rubik'),
                            ),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            new IconButton(
                              icon: new Icon(
                                Icons.add_circle,
                                color: Color(0xffFFE434),
                              ),
                              onPressed: _incrementCounter,
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: Container(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(children: <Widget>[
                        Text('Type'),
                        DropdownButton(
                            focusColor: Colors.amber,
                            items: null,
                            onChanged: null)
                      ]),
                    ),
                  ),
                  ListTile(
                    leading: GestureDetector(
                      child: Image(
                        image: AssetImage('images/departure.png'),
                      ),
                    ),
                    title: Text(
                      'Departure',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff8A959E),
                          fontFamily: 'Rubik'),
                    ),
                    subtitle: Text(
                      'Tue 6th May 2020',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: 'Rubik'),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Color(0xffFF344C),
                    padding: const EdgeInsets.only(right: 32.0, left: 32),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffFF344C),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text('Find Ride',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
