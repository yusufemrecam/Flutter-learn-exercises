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
  var radioDeger = 0;


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
            RadioListTile(
              title: Text("Galatasaray",
              style: TextStyle(color: Colors.red, fontSize:25,),
              ),
              value: 1,
              groupValue: radioDeger,
              activeColor: Colors.red,
              onChanged: (int veri){
                setState(() {
                  radioDeger = veri;
                });
                print("Galatasaray Seçildi");
              },
            ),
            RadioListTile(
              title: Text("Fenerbahçe",
              style: TextStyle(color: Colors.green, fontSize: 20,),
              ),
              value: 2,
              groupValue: radioDeger,
              activeColor: Colors.lightGreen,
              onChanged: (int veri){
                setState(() {
                  radioDeger = veri;
                });
                print("Fenerbahçe Seçildi");
              },
            ),
            RaisedButton(
              child: Text("Göster"),
              onPressed: (){
                if(radioDeger == 1){
                  print("Galtasaray Basıldı");
                }else{
                  print("Fenerbahçe Basıldı");
                }
              },
            ),
          ],
        ),
      ),

    );
  }
}
