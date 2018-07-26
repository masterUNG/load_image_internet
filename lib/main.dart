import 'package:flutter/material.dart';
import 'urlImage.dart';

void main()
 {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new MyStateful(),
    );
  }
}
class MyStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyStatefulState();
  }

}

class _MyStatefulState extends State<MyStateful> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load Image"),
      ),
      body: new UrlImage(),
    );
  }
}

