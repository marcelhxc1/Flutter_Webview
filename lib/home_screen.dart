
import 'package:flutter/material.dart';
import 'package:my_webview_project/MyWebView.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyWebView(selectedUrl: 'https://app.beatrun.com.br',),
      ),
    );
  }
}