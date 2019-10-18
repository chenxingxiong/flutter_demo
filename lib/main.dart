import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: new ListView(
          children: <Widget>[
            new Image.asset('images/lake.jpg'),
            titleSection,
            new Container(
              padding: EdgeInsets.only(top: 20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildButtonColumn(Icons.call, 'CALL'),
                  buildButtonColumn(Icons.near_me, 'ROUTE'),
                  buildButtonColumn(Icons.share, 'SHARE'),
                ],
              ),
            ),
            textSection,
            textSection,
            textSection,
            textSection,
          ],
        ));
  }

  Column buildButtonColumn(IconData icon, String label) {
    Color color = Theme
        .of(context)
        .primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }

  Widget titleSection = new Container(
    child: new Row(
      children: <Widget>[
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(top: 15, bottom: 1.0, left: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      textBaseline: null,
                      decoration: TextDecoration.none),
                ),
              ),
              new Container(
                padding: const EdgeInsets.only(left: 8.0),
                child: new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  ),
                ),
              )
            ],
          ),
        ),
        new Icon(
          Icons.star,
          color: Colors.black,
        ),
        new Container(
          padding: const EdgeInsets.only(right: 10),
          child: new Text(
            '41',
            style: new TextStyle(
              color: Colors.black,
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
        )
      ],
    ),
  );




  Widget textSection = new Container(
  padding: const EdgeInsets.all(32.0),
  child: new Text(
  '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
  style: new TextStyle(
  fontSize: 12, color: Colors.grey, decoration: TextDecoration.none),
  softWrap: true,
  ),
  );



  /* buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),*/


}
