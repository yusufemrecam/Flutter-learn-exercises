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

  bool switchKontrol = false;

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
            Switch(
                value: switchKontrol,
                activeTrackColor: Colors.lightGreen,
                activeColor: Colors.green,
                inactiveTrackColor: Colors.redAccent,
                inactiveThumbColor: Colors.red,
                onChanged: (veri){
                  setState(() {
                    switchKontrol = veri;
                  });
                  print("SWitch : $veri");
                },
            ),
            RaisedButton(
              child: Text("Göster"),
              onPressed: (){
                print("Switch durum : $switchKontrol");
              },

            ),
          ],
        ),
      ),

    );
  }
}
