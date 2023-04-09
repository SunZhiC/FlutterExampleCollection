import 'package:flutter/material.dart';

class TabBarBottomPage extends StatefulWidget {
  const TabBarBottomPage({super.key});

  @override
  TabBarBottomPageState createState() => TabBarBottomPageState();
}

class TabBarBottomPageState extends State<TabBarBottomPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // 设置选项卡的数量
        child: Scaffold(
          appBar: AppBar(
            title: const Text('DefaultTabController Example'),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
            ],
          ),
          bottomNavigationBar: Container(
            color: Theme.of(context).primaryColor, // 设置与 AppBar 相同的背景色
            child: const SafeArea(
              child: SizedBox(
                height: kToolbarHeight, // 设置标准工具栏高度
                child: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Tab 1'),
                    Tab(icon: Icon(Icons.star), text: 'Tab 2'),
                    Tab(icon: Icon(Icons.settings), text: 'Tab 3'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
