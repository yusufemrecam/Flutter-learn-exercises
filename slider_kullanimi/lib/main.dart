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

  double ilerleme = 50.0;

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
            Text("Sonuc: ${ilerleme.toInt()}"),
            Slider(
              max: 100.0,
              min: 0.0,
              value: ilerleme,
              activeColor: Colors.green,
              inactiveColor: Colors.red,

              onChanged: (double i){
                setState(() {
                  ilerleme = i ;
                });
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                print("Slider İlerleme: ${ilerleme.toInt()}");
              },
            ),
          ],
        ),
      ),

    );
  }
}
