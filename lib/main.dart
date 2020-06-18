import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  void _incrementCounter() {
    setState(() {
      
    
    });
  }

  @override
  Widget build(BuildContext context) {
      return SafeArea(
       child: Scaffold(
       body: Center(
       child: Container(
       height: 100,
       width: 100,
       child: GestureDetector(
         onTap: () async {
           const url = 'https://web.whatsapp.com/';
           if (await canLaunch(url)) {
             await launch(url);

           } else {
             throw 'Could not lauch $url';
           }
         },
         child: FlutterLogo(),
       ),
      ),
      ),
      ),
      );  
      
  }
}
