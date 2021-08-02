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

  bool kotlinDurum = false;
  bool dartDurum = false;

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
            CheckboxListTile(
              title: Text("Kotlin"),
              value: kotlinDurum,
              controlAffinity: ListTileControlAffinity.leading, //check edilebilir kısmı sol tarada getirme
                checkColor: Colors.red,
              activeColor: Colors.green,
              onChanged: (bool veri){
                print("Kotlin Seçildi : $veri");
                setState(() {
                  kotlinDurum = veri;
                });

              }
            ),
            CheckboxListTile(
                title: Text("Dart"),
                value: dartDurum,
                controlAffinity: ListTileControlAffinity.leading, //check edilebilir kısmı sol tarada getirme
                onChanged: (bool veri){
                  print("Dart Seçildi : $veri");
                  setState(() {
                    dartDurum = veri;
                  });

                }
            ),

            RaisedButton(
              child: Text("Tıkla"),
              onPressed: (){
                print("Dart durum : $dartDurum");
                print("Kotlin durum: $kotlinDurum");
              },
            ),
          ],
        ),
      ),

    );
  }
}
