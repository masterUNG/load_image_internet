import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UrlImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _UrlImageState();
  }
}

class _UrlImageState extends State<UrlImage> {
  var imageURL2s = ['http://androidthai.in.th/mua/lmage/food1.jpg'];

  var imageURLs = [
    'http://androidthai.in.th/mua/lmage/food1.jpg',
    'http://androidthai.in.th/mua/lmage/food2.jpg',
    'http://androidthai.in.th/mua/lmage/food3.jpg',
    'http://androidthai.in.th/mua/lmage/food4.jpg',
    'http://androidthai.in.th/mua/lmage/food5.jpg',
    'http://androidthai.in.th/mua/lmage/food31.jpg',
    'http://androidthai.in.th/mua/lmage/food32.jpg',
    'http://androidthai.in.th/mua/lmage/food33.jpg',
    'http://androidthai.in.th/mua/lmage/food34.jpg',
    'http://androidthai.in.th/mua/lmage/food35.jpg'
  ];

  var indexImageInt = 0;

  @override
  Widget build(BuildContext context) {
    final cachedNetworkImage = new CachedNetworkImage(
      height: 300.0,
      imageUrl: imageURLs[indexImageInt],
      placeholder: new CircularProgressIndicator(),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load URL image in Flutter"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Center(
                  child: cachedNetworkImage,
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                        child: new Text("Back"),
                        onPressed: () {
                          setState(() {
                            indexImageInt = (indexImageInt <= 0)
                                ? imageURLs.length - 1
                                : indexImageInt - 1;
                          });
                        })),
                new Expanded(
                  child: new RaisedButton(
                      child: new Text("Next"),
                      onPressed: () {
                        setState(() {
                          indexImageInt = (indexImageInt >= imageURLs.length-1)
                              ? 0
                              : indexImageInt+1;
                        });
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
