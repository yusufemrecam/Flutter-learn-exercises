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
      body: Row(
        children: [
          Container(
            //margin: const EdgeInsets.all(10.0),  //Containerin her tarafına boşluk bırakma
            margin: const EdgeInsets.only(top:30,left:30,),
            width: 200,
            height: 200,
            child: Text("Merhaba"),
            decoration: BoxDecoration(
              color:Colors.red,
              border: Border.all(
                color: Colors.blue,
                width: 5.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)), //counterinerin köşelerini yuvarlatma
            ),

          ),

        ],
      ),
    );
  }
}
