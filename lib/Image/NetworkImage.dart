import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImagePage extends StatelessWidget {
  const NetworkImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${runtimeType.toString().substring(0, runtimeType.toString().length)} Example"),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // placeholder and progressIndicatorBuilder cant use together
            CachedNetworkImage(
                imageUrl: 'https://example.com/my_image.jpg',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Image.asset('images/error_image.png')),

            CachedNetworkImage(
                width: 100,
                height: 100,
                imageUrl: 'https://example.com/my_image.jpg',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) =>
                    Image.asset('images/error_image.png'))
          ],
        )));
  }
}
