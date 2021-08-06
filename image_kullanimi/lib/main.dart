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

  String resimAdi = "django.png";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            //normal yükleyerek image kullanımı
            /*Image.asset("resimler/$resimAdi"),
            ElevatedButton(
              child: Text("Resim 1"),
              onPressed: (){
                setState(() {
                  resimAdi = "yemekresim.jpeg";
                });
              },
            ),
            ElevatedButton(
              child: Text("Resim 2"),
              onPressed: (){
                setState(() {
                  resimAdi = "resim.jpg";
                });
              },
            ),*/


           /***************************/
            //network olarak internet üzerinden çekme
            Image.network("http://kasimadalan.pe.hu/filmler/resimler/django.png"),
            ElevatedButton(
              child: Text("Resim 1"),
              onPressed: (){
                setState(() {
                  resimAdi = "django.png";
                });
              },
            ),
            ElevatedButton(
              child: Text("Resim 2"),
              onPressed: (){
                setState(() {
                  resimAdi = "inception.png";
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}
