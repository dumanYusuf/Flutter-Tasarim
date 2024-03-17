import 'package:flutter/material.dart';
import 'package:moda/detay.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int secilenmenuitem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Moda Uygulaması",
        style: TextStyle(fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.transparent)
        ,),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt,size: 30,color: Colors.grey))
        ]
        ,),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 30,color: Colors.grey,),
              label: "Anasayfa",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.padding,size: 30,color: Colors.grey,),
              label: "Kaydet",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 30,color: Colors.grey,),
              label: "Hesabım",
            ),
          ],
        type: BottomNavigationBarType.fixed,
        currentIndex: secilenmenuitem,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index){
            setState(() {
              secilenmenuitem=index;
            });
        },
      ),

      body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/model1.jpeg",
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              bottom: 5,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/chanellogo.jpg"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/model2.jpeg",
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              bottom: 5,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/chanellogo.jpg"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/model3.jpeg",
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              bottom: 5,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/chanellogo.jpg"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/model1.jpeg",
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              bottom: 5,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/chanellogo.jpg"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/model2.jpeg",
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              bottom: 5,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/chanellogo.jpg"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text("follow",style: TextStyle(fontSize: 20,color: Colors.white70),),
                    ),

                  ),
                  SizedBox(width: 35,),
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("follow",style: TextStyle(fontSize: 20,color: Colors.white70),),
                  ),
                  SizedBox(width: 35,),
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("follow",style: TextStyle(fontSize: 20,color: Colors.white70),),
                  ),
                  SizedBox(width: 40,),
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("follow",style: TextStyle(fontSize: 20,color: Colors.white70),),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 4,
               // color: Colors.red,
                child:Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 360,
                          height: 500,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage("assets/model1.jpeg"),
                                  ),
                                  Column(
                                    children: [
                                      Text("Daily",style: TextStyle(fontSize: 20,color: Colors.black),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text("34 min ago",style: TextStyle(fontSize: 16,color: Colors.black),),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 140,),
                                  IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.more_vert,size: 30,color: Colors.grey,))
                                ],
                              ),
                              Text("moda ,her donem insanların tarzını ifade ettiği,belirlediği ve kişisel ifadeyiyansıttıgı giyim tarzıdır diyebiliriz",
                              style: TextStyle(fontSize: 16,color: Colors.grey),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  InkWell(
                                    onTap:(){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detay()));
                                         },
                                    child: Hero(
                                      tag: "assets/modelgrid1.jpeg",
                                      child: Container(
                                        width: 180,
                                        height: 204,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/modelgrid1.jpeg"),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Container(
                                        width: 140,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("assets/modelgrid2.jpeg"),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        width: 140,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("assets/modelgrid3.jpeg"),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: (){},
                                          icon: Icon(Icons.share,size: 30,color: Colors.grey,)
                                      ),
                                      Text("17.k",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                      SizedBox(width: 20,),
                                      Icon(Icons.message,size: 30,color: Colors.grey,),
                                      Text("325",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                      SizedBox(width: 20,),
                                      Icon(Icons.favorite,size: 30,color: Colors.red,),
                                      Text("23.k",style: TextStyle(fontSize: 20,color: Colors.grey),)

                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
