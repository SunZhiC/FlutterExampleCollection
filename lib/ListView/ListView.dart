import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  ListViewPageState createState() => ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body:
            // ListView(
            //   children: const <Widget>[
            //     ListTile(title: Text('Item 1')),
            //     ListTile(title: Text('Item 2')),
            //     ListTile(title: Text('Item 3')),
            //   ],
            // )
            //     ListView.builder(
            //   itemCount: 50,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(title: Text('Item ${index + 1}'));
            //   },
            // )
            //     ListView.separated(
            //   itemCount: 50,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(title: Text('Item ${index + 1}'));
            //   },
            //   separatorBuilder: (BuildContext context, int index) {
            //     return const Divider();
            //   },
            // )
                ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 200, color: Colors.red),
                Container(width: 200, color: Colors.blue),
                Container(width: 200, color: Colors.green),
              ],
            )
            //     ListView(
            //   padding: const EdgeInsets.all(16),
            //   children: const <Widget>[
            //     ListTile(title: Text('Item 1')),
            //     ListTile(title: Text('Item 2')),
            //     ListTile(title: Text('Item 3')),
            //   ],
            // )
        //     ListView.builder(
        //   physics: const BouncingScrollPhysics(),
        //   itemCount: 50,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(title: Text('Item ${index + 1}'));
        //   },
        // )
        );
  }
}
