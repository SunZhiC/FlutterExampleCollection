import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({super.key});

  @override
  DismissiblePageState createState() => DismissiblePageState();
}

class DismissiblePageState extends State<DismissiblePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "${runtimeType.toString().substring(0, runtimeType.toString().length - 9)} Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Dismissible(
              key: UniqueKey(),
              child: const ListTile(title: Text('Item')),
              onDismissed: (direction) {
                // 在此处处理列表项消失后的逻辑，例如从数据源中移除该项
                debugPrint("dismiss");
              },
            ),
            Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                // 处理列表项消失后的逻辑
                debugPrint("dismiss");
              },
              background: Container(color: Colors.red),
              child: const ListTile(title: Text('Item')), // 自定义滑动时显示的背景颜色
            ),
            Dismissible(
              key: UniqueKey(),

              onDismissed: (direction) {
                // 处理列表项消失后的逻辑
                debugPrint("dismiss");
              },
              background: Container(color: Colors.red),
              direction: DismissDirection.horizontal, // 允许从左右两侧滑动
              child: const ListTile(title: Text('Item')),
            ),
            Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                // 处理列表项消失后的逻辑
                debugPrint("dismiss");
              },
              background: Container(color: Colors.red),
              confirmDismiss: (direction) async {
                // 显示确认对话框并返回结果
                return await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirm'),
                      content: const Text(
                          'Are you sure you want to delete this item?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('No'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const ListTile(title: Text('Item')),
            )
          ],
        ));
  }
}
