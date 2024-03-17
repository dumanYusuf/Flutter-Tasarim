import 'package:flutter/material.dart';
import 'package:google_drive/Sayfalar/anasayfa.dart';
import 'package:google_drive/Sayfalar/dosyalar.dart';
import 'package:google_drive/Sayfalar/paylasilan.dart';
import 'package:google_drive/Sayfalar/yildizli.dart';
import 'package:google_drive/YanSayfalar/copkutusu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderdeger=0.0;
  int secilenmenuitem=0;

  late List<Widget>tumsayfalar;
  late AnaSayfa anaSayfa;
  late Yildiz yildiz;
  late Paylasilan paylasilan;
  late Dosyalar dosyalar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    anaSayfa=AnaSayfa();
    yildiz=Yildiz();
    paylasilan=Paylasilan();
    dosyalar=Dosyalar();
    tumsayfalar=[anaSayfa,yildiz,paylasilan,dosyalar];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade900),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          iconTheme: IconThemeData(color: Colors.white),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text("Gooogle Driwer",style: TextStyle(fontSize: 24,color: Colors.white)),
              TextButton(
                  onPressed: (){},
                  child: Text("YD",style: TextStyle(fontSize: 24,color: Colors.white),))
            ],
          ),
        ),
        drawer: buildDrawer(),
       body: tumsayfalar[secilenmenuitem],
        bottomNavigationBar: buildTheme(),
      ),
    );
  }

  Theme buildTheme() {
    return Theme(
        data: ThemeData(canvasColor: Colors.grey.shade800),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey.shade800,
            items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home, size: 30, color: Colors.white),
        label: "AnaSayfa",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star, size: 30, color: Colors.white),
                label: "Yıldızlı",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.share, size: 30, color: Colors.white),
                label: "Paylaşılan",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy, size: 30, color: Colors.white),
                label: "Dosyalar",
              ),
              ],
          type: BottomNavigationBarType.fixed,
          currentIndex: secilenmenuitem,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          onTap: (index){
            setState(() {
              secilenmenuitem=index;
            });
          },
            ),
      );
  }

  Drawer buildDrawer() {
    return Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          children: [
           Container(
             height: 110,
             child: UserAccountsDrawerHeader(
                 accountName: Text("Google Drive",style: TextStyle(color: Colors.white,fontSize: 24),),
                 accountEmail: Text(""),
               decoration: BoxDecoration(
                 color: Colors.grey.shade900,
               ),
             ),
           ),
           Expanded(
             child: ListView(
               children: [
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.lock_clock,size: 30,color: Colors.white,),
                     title: Text("En son",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.offline_pin,size: 30,color: Colors.white,),
                     title: Text("Çevrimdışı",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 ),
                 Builder(
                   builder: (context) => InkWell(
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => CopKutusu()));
                     },
                     child: ListTile(
                       leading: Icon(Icons.delete, size: 30, color: Colors.white,),
                       title: Text("Çöp kutusu", style: TextStyle(fontSize: 24, color: Colors.white),),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.report,size: 30,color: Colors.white,),
                     title: Text("Spam",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.backup,size: 30,color: Colors.white,),
                     title: Text("Yedekleme",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.settings,size: 30,color: Colors.white,),
                     title: Text("Ayarlar",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.help,size: 30,color: Colors.white,),
                     title: Text("Yardım ve geri bilidirim",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     print("tıklandı");
                   },
                   child: ListTile(
                     leading: Icon(Icons.cloud_outlined,size: 30,color: Colors.white,),
                     title: Text("Depolama",style: TextStyle(fontSize: 24,color: Colors.white),),
                   ),
                 )
               ],
             ),
           ),
            Slider(
              activeColor: Colors.grey,
              min: 0,
                max: 20,
                divisions: 10,
                label: sliderdeger.toString(),
                value: sliderdeger.toDouble(),
                onChanged: (yenideger){
                  setState(() {
                    sliderdeger=yenideger;
                    print(yenideger);
                  });

                }
            ),
            Text("Toplam 20 GB kullanım alanınız mevcut",style: TextStyle(fontSize: 20,color: Colors.white),),

          ],
        ),
      );
  }
}
