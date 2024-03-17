import 'package:flutter/material.dart';

class Dag extends StatefulWidget {

  @override
  State<Dag> createState() => _DagState();
}

class _DagState extends State<Dag> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 IconButton(
                     onPressed: (){
                       Navigator.of(context).pop();
                     },
                     icon: Icon(Icons.keyboard_arrow_left,
                       size: 30,
                       color: Colors.white,
                     ),
                 ),

                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                 /* ElevatedButton(
                      onPressed: (){
                         setState(() {
                           mesaj="geri bildirim gönder";
                           print(mesaj);
                           Text(mesaj,style: TextStyle(color:Colors.red,fontSize: 24),);
                         });
                      },
                      child:Icon(Icons.menu),
                  )*/
                ],
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/dag.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dag()));
                },
                  icon: Icon(Icons.play_circle,
                    size: 90,
                    color: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text("18+",style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 8,),
                    Text("2021.2sa.5dk.",style: TextStyle(fontSize: 20,color: Colors.white))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 20),
                child: Text("Evlilik danışmanlığı ve aile terapistliği yapan Dag Refsnes, yalnız yaşayan ve insanlardan haz etmeyen biridir. Dag'ın asosyal kişiliğinin işine de yansıması hastalarına yardım etmekten çok onların gerçekleri görmelerine sebep olacaktır. Evliliğe ve üremeye karşı olan Dag tüm ciddiyetiyle hastalarının yüzüne gerçeği tokat gibi vurararak onların çaresizlik içinde kıvranmalarını büyük zevkle izler. Öte yandan kendi hayatındaki sorunlar karşısında Dag'ın sergileyeceği tutum da merak konusudur.",
                style: TextStyle(fontSize: 20,color: Colors.white  )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade600,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.label_important_outline,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade600,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade600,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade600,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.backspace_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
