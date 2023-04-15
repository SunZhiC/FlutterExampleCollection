import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {

  final String linkText;
  final String url;

  const LinkText({super.key, required this.linkText, required this.url});

  Future<void> _launchURL() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Text(
        linkText,
        style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
      ),
    );
  }
}
