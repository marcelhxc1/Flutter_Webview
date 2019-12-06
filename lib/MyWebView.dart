import 'dart:async';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatelessWidget {
  //final String title;
  final String selectedUrl;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
      
  MyWebView({
    //@required this.title,
    @required this.selectedUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
        child: FlatButton(
        child: Text("Open Webpage"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => MyWebView(
                    selectedUrl: "https://alligator.io",
                  )));
        },
      );
  }
}