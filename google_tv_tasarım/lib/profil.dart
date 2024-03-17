import 'package:flutter/material.dart';

class Profil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        child: Text("YD",style: TextStyle(color: Colors.white,fontSize: 24),),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Yusuf Duman",
                          style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text("dumannyusuf65@gmail.com",
                          style: TextStyle(fontSize: 15,color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Column(
                     children: [
                       Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                           child: IconButton(
                             onPressed: (){}, icon: Icon(Icons.notifications,size: 35,),)
                       ),
                       SizedBox(height: 10,),
                       Text("Bildirimlerim",style: TextStyle(fontSize: 15,color: Colors.white),)
                     ],
                   ),
                    Column(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: IconButton(
                              onPressed: (){}, icon: Icon(Icons.favorite_outline,size: 35,),)
                        ),
                        SizedBox(height: 10,),
                        Text("Begendiklerim",style: TextStyle(fontSize: 15,color: Colors.white),)
                      ],
                    ),

                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person,size: 40,color: Colors.white,),
                    title: Text("Kullanıcı Bilgilerim",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                        size: 40,color: Colors.white,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.home,size: 40,color: Colors.white,),
                    title: Text("Adreslerim",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                          size: 40,color: Colors.white,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.key,size: 40,color: Colors.white,),
                    title: Text("Şifre Değişkliğim",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                          size: 40,color: Colors.white,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.star,size: 40,color: Colors.white,),
                    title: Text("Değerlendirmelerim",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                          size: 40,color: Colors.white,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.card_giftcard_outlined,size: 40,color: Colors.white,),
                    title: Text("Kayıtlı Kartlarım",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                          size: 40,color: Colors.white,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.help,size: 40,color: Colors.white,),
                    title: Text("Yardım",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                          size: 40,color: Colors.white,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app_outlined,size: 40,color: Colors.white,),
                    title: Text("Çıkış Yap",style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.navigate_next_outlined,
                          size: 40,color: Colors.white,)),
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}
