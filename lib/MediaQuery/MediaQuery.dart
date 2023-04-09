import 'package:flutter/material.dart';

class MediaQueryStatePage extends StatefulWidget {
  const MediaQueryStatePage({super.key});

  @override
  MediaQueryStatePageState createState() => MediaQueryStatePageState();
}

class MediaQueryStatePageState extends State<MediaQueryStatePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double bottomBarHeight = MediaQuery.of(context).padding.bottom;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    Brightness brightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Screen width: $screenWidth"),
            Text("Screen height: $screenHeight"),
            Text("Orientation: $orientation"),
            Text("Device pixel ratio: $devicePixelRatio"),
            Text("Statue bar height: $statusBarHeight"),
            Text("Botttom bar height: $bottomBarHeight"),
            Text("Text scale factor: $textScaleFactor"),
            Text("Brightness: $brightness"),
          ],
        ));
  }
}
