import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:my_webview_project/home_page.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home_screen.dart';
//import 'package:requests/requests.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Beat Run',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Splash Screen'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}
Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF000000),
            Color(0xFF000000)
          ],
        ),
        navigateAfterSeconds: HomeScreen(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo.jpg"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    ],
  );
}