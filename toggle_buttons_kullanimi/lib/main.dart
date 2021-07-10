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

  var toggleDurumlar = [false, true, false];
  int secilenToggleindex = 0;



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
            ToggleButtons(
              children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3),
              ],
              isSelected: toggleDurumlar,
              color: Colors.purple,
              selectedColor: Colors.deepOrange,
              fillColor: Colors.greenAccent,
              onPressed: (int secilenIndeks){
                secilenToggleindex = secilenIndeks;
                print("${secilenIndeks+1}. toggle seçildi");
                setState(() {
                  toggleDurumlar[secilenIndeks] = !toggleDurumlar[secilenIndeks]; //!değeri tersine çevir
                });
              }
            ),
            RaisedButton(
              child: Text("Göster"),
              onPressed: (){
                print("En son ${secilenToggleindex+1}. toggle seçildi");
              },
            ),
          ],
        ),
      ),

    );
  }
}
