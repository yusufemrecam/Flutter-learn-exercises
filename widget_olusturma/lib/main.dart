import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaviKare(),
            SizedBox(height: 20,),
            KirmiziKare(),
            SizedBox(height: 20,),
            Yazi("merhaba", 45.0)
          ],
        ),
      ),

    );
  }
}

class MaviKare extends StatelessWidget{ //mavi kare adında widget oluşturduk
  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,color: Colors.blue,);
  }
}

class KirmiziKare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,color: Colors.red,);
  }
}

class Yazi extends StatelessWidget { //dışardan parametre alarak text widget oluşturduk.

  String icerik;
  double yaziBoyutu;

  Yazi(this.icerik, this.yaziBoyutu);


  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyutu),);
  }
}

