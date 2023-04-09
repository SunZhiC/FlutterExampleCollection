import 'package:flutter/material.dart';

class TabBarTopPage extends StatefulWidget {
  const TabBarTopPage({super.key});

  @override
  TabBarTopPageState createState() => TabBarTopPageState();
}

class TabBarTopPageState extends State<TabBarTopPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // 设置选项卡的数量
        child: Scaffold(
          appBar: AppBar(
            title: const Text('DefaultTabController Example'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
            ],
          ),
        ),
      ),
    );
  }
}
