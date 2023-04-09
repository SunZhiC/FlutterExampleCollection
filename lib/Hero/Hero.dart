import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  HeroPageState createState() => HeroPageState();
}

class HeroPageState extends State<HeroPage> {
  final TextEditingController _controller = TextEditingController();

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
            Hero(
              tag: 'your_unique_hero_tag_1',
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),

            Hero(
              tag: 'your_unique_hero_tag_2',
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            )
          ],
        ));
  }
}
