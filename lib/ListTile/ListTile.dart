import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key});

  @override
  ListTilePageState createState() => ListTilePageState();
}

class ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body: ListView(
          children: <Widget>[
            const ListTile(
              title: Text('Title'),
            ),
            const ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Title'),
            ),
            const ListTile(
              title: Text('Title'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                debugPrint("tap press");
              },
            ),
            ListTile(
              title: const Text('Title'),
              onLongPress: () {
                debugPrint("long press");
              },
            ),
            const ListTile(
              title: Text(
                'Title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Subtitle',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const ListTile(
              title: Text('Title'),
              selected: true, // 或 false
            ),
          ],
        ));
  }
}
