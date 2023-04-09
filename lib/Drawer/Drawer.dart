import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  DrawerPageState createState() => DrawerPageState();
}

class DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
      ),
      drawer: SizedBox(
        width: 150,
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('John Doe'),
                accountEmail: Text('john.doe@example.com', maxLines: 2),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/moon.jpg'),
                ),
              ),
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //   ),
              //   child: Text('Drawer Header'),
              // ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Do something on tap
                  Navigator.pop(context);
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Do something on tap
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        width: 150,
        child: ListView(
          children: [
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Do something on tap
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Do something on tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
