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

  var tfController = TextEditingController();
  String alinanVeri = "";

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField( //kullanıcılardan bilgi alabiliriz
                controller: tfController,
                obscureText: true, //şifre giriyormuş gibi yazılanı gizliyor
                keyboardType: TextInputType.datetime, //klavye açılış türü bu sadece sayılar çıkar
                textAlign: TextAlign.center,//text içindeki yazı ortalanır
                maxLength: 4, //texte yazılan yazı max 4 karekter olacak
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Yazınız",
                  hintStyle: TextStyle(
                    color: Colors.deepOrange, //textfiel içindeki yazını kısmının rengi
                    fontSize: 20, //textfiel içindeki yazınız kısmının boyutu
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                  filled: true, //arkaplan rengi değiştirme için
                  fillColor: Colors.lightGreenAccent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  prefixIcon: Icon(Icons.print),//icon ekleme
                ),
              ),
            ),
            RaisedButton(
              child: Text("Veriyi Al"),
              color: Colors.yellow, //buton rengi
              textColor: Colors.white, //buton yazı rengi
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),  //buton ovalleştirme
                side: BorderSide(color: Colors.red), //butona çerçeve ekleme
              ),

              onPressed: (){
                setState(() { //metin girildikten sonra sayfa yenilemesi için
                  alinanVeri = tfController.text; //tf ye girilen metni aktarır
                });

              },
            ),
            Text("Gelen Veri : $alinanVeri",
              style: TextStyle(
                color: Colors.yellow, //text rengi
                backgroundColor: Colors.redAccent, //arka plan rengi
                fontSize: 30, //text boyutu
                fontWeight: FontWeight.bold, //text kalınlaştırma

              ),
            ),
          ],
        ),
      ),

    );
  }
}
