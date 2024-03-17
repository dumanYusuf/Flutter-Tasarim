import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_tv/anasayfa.dart';
import 'package:google_tv/drawer_sayfa/begendigimdiziler.dart';
import 'package:google_tv/profil.dart';
import 'kaydedilenler.dart';
import 'kitaplik.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int secilenitem = 0;
  late List<Widget> tumsayfalar;
  late AnaSayfa anasayfa;
  late Kitaplik kitaplik;
  late Kaydedilenler kaydet;
  late Profil profil;


  @override
  void initState() {
    super.initState();
    anasayfa = AnaSayfa();
    kitaplik = Kitaplik();
    kaydet = Kaydedilenler();
    profil=Profil();

    tumsayfalar = [anasayfa, kitaplik, kaydet,profil];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(title: Text("Google TV"),backgroundColor: Colors.white,),
          body: tumsayfalar[secilenitem],
            bottomNavigationBar: buildTheme(),
            drawer: buildDrawer(),
      ),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
            backgroundColor:Colors.white ,
            child: Column(
              children: [
                SizedBox(
                  child: UserAccountsDrawerHeader(
                    accountEmail:Text("dumanyusuf@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20),),
                    accountName: Text("Yusuf Duman",style: TextStyle(color: Colors.white,fontSize: 20),),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900
                    ),
                    otherAccountsPictures: [
                      CircleAvatar(backgroundColor: Colors.grey
                        ,child: Text("YD",
                          style: TextStyle(fontSize: 24),
                        ),)
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Begenilen1()));
                            },
                      child: ListTile(
                        leading: Icon(Icons.favorite,size: 30,),
                         title: Text("Beğendiğim Diziler",
                           style: TextStyle(fontSize:24 ),
                         ),
                        trailing: IconButton(
                            onPressed: (){

                            },
                          icon: Icon(Icons.navigate_next_outlined,size: 40,),
                        ),
                      ),
                    ),
                      InkWell(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.paste,size: 30,),
                          title: Text("Dizi Geçmişi",
                            style: TextStyle(fontSize:24 ),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.navigate_next_outlined,size: 40,),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.watch_later_outlined,size: 30,),
                          title: Text("Daha Sonra İzle",
                            style: TextStyle(fontSize:24 ),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.navigate_next_outlined,size: 40,),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.account_balance_outlined,size: 30,),
                          title: Text("Hakkımızda",
                            style: TextStyle(fontSize:24 ),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.navigate_next_outlined,size: 40,),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.settings,size: 30,),
                          title: Text("Ayarlar",
                            style: TextStyle(fontSize:24 ),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.navigate_next_outlined,size: 40,),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: ListTile(
                          leading: Icon(Icons.person,size: 30,),
                          title: Text("Profil",
                            style: TextStyle(fontSize:24 ),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.navigate_next_outlined,size: 40,),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Theme buildTheme() {
    return Theme(
                  data: ThemeData(canvasColor: Colors.grey.shade900),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.grey.shade900,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home,
                            size: 40,
                          ),
                          label: "Anasayfa"),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.book,
                          size: 40,
                        ),
                        label: 'Kitaplık',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.label_important_outline,
                          size: 40,
                        ),
                        label: 'Kaydedilenler',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person,
                          size: 40,
                        ),
                        label: 'Profil',
                      ),
                    ],
                    type: BottomNavigationBarType.shifting,
                    currentIndex: secilenitem,
                    unselectedItemColor: Colors.white,
                    selectedItemColor: Colors.blue,
                    onTap: (deger) {
                      setState(() {
                        secilenitem = deger;
                      });
                    },
                  ),
                );
  }

}
