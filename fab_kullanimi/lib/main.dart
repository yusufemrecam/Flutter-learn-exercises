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
            TextField(
              decoration: InputDecoration(
                hintText: "Yazınız",
              ),
            ),
            FloatingActionButton( //fab buton sayfada sabit kalması için body içinde de tanımlanabilir
              onPressed: (){
                print("Fab 1 tıklandı");
              },
              tooltip: 'fab2',
              child: Icon(Icons.add_to_photos_sharp), //buton iconu
              backgroundColor: Colors.black, //buton arkaplan rengi
              foregroundColor: Colors.white, //buton rengi
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton( //fab buton sabit kalması için body altında tanımlamalıyız
        onPressed: (){
          print("Fab 1 tıklandı");
        },
        tooltip: 'fab1',
        child: Icon(Icons.add_to_photos_sharp), //buton iconu
        backgroundColor: Colors.deepOrange, //buton arkaplan rengi
        foregroundColor: Colors.purple, //buton rengi
      ),*/
      floatingActionButton: FloatingActionButton.extended( //üsteki butondan farkı bu butona yazıda eklenebilir
        onPressed: (){
          print("Fab 1 tıklandı");
        },
        label: Text("Fab"),
        icon: Icon(Icons.add_to_photos_sharp), //buton iconu
        backgroundColor: Colors.deepOrange, //buton arkaplan rengi
        foregroundColor: Colors.purple, //buton rengi
      ),
    );
  }
}
