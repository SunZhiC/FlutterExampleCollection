import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  SliderPageState createState() => SliderPageState();
}

class SliderPageState extends State<SliderPage> {
  double _sliderValue = 0;
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
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              onChanged: (double newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
            ),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              onChanged: (double newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
              activeColor: Colors.red, // 设置滑块激活部分的颜色
              inactiveColor: Colors.grey, // 设置滑块非激活部分的颜色
            ),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              onChanged: null, // 设置为null表示禁用滑块
            ),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              divisions: 5, // 设置滑块的刻度数量
              onChanged: (double newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
              label: _sliderValue.toStringAsFixed(1), // 显示滑块的当前值
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2.0, // 自定义滑块轨道高度
                thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 10.0), // 自定义滑块形状
              ),
              child: Slider(
                value: _sliderValue,
                min: 0.0,
                max: 100.0,
                onChanged: (double newValue) {
                  setState(() {
                    _sliderValue = newValue;
                  });
                },
              ),
            )
          ],
        ));
  }
}
