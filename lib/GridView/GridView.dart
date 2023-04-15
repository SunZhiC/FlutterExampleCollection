import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  GridViewPageState createState() => GridViewPageState();
}

class GridViewPageState extends State<GridViewPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
      ),
      body:
          GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: <Widget>[
              Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.yellow),
            ],
          ),
          // GridView.builder(
          //   itemCount: 20,
          //   gridDelegate:
          //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //         color: Colors.primaries[index % Colors.primaries.length]);
          //   },
          // ),
          //     GridView.count(
          //   crossAxisCount: 3,
          //   children: <Widget>[
          //     Container(color: Colors.red),
          //     Container(color: Colors.blue),
          //     Container(color: Colors.green),
          //     Container(color: Colors.yellow),
          //     Container(color: Colors.grey),
          //     Container(color: Colors.purple),
          //   ],
          // )
          //     GridView.extent(
          //   maxCrossAxisExtent: 20,
          //   children: <Widget>[
          //     Container(color: Colors.red),
          //     Container(color: Colors.blue),
          //     Container(color: Colors.green),
          //     Container(color: Colors.yellow),
          //   ],
          // )
          //     GridView(
          //   padding: const EdgeInsets.all(16),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2),
          //   children: <Widget>[
          //     Container(color: Colors.red),
          //     Container(color: Colors.blue),
          //     Container(color: Colors.green),
          //     Container(color: Colors.yellow),
          //   ],
          // ),
          // GridView.builder(
      //   physics: const BouncingScrollPhysics(),
      //   itemCount: 21,
      //   gridDelegate:
      //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //   itemBuilder: (BuildContext context, int index) {
      //     return Stack(
      //         children: [
      //           Container(
      //         color: Colors.primaries[index % Colors.primaries.length]),
      //           Text('Item ${index + 1}')
      //         ],
      //       );
      //   },
      // ),
    );
  }
}
