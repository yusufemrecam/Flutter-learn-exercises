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

  Future<int> faktoriyelHesaplama(int sayi) async{  //future metodu
    int sonuc = 1;

    for(var i=1;i<=sayi;i++){
      sonuc = sonuc * i;
    }
    return sonuc;
  }

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
            FutureBuilder<int>(  //future metodunu sonucunu görmek için
              future: faktoriyelHesaplama(5),
              builder: (context,snapshot){
                if(snapshot.hasError){ //snapshot ile hata var mı kontrolü
                  print("Hata Sonucu: ${snapshot.error}");
                }

                if(snapshot.hasData){
                  return Text("Sonuc: ${snapshot.data}"); //bilgi varmı
                }else{
                 return Text("Gösterilecek veri yok!!");
                }
              },
            ),
          ],
        ),
      ),

    );
  }
}
