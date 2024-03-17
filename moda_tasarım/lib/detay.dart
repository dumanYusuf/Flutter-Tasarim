import 'package:flutter/material.dart';
import 'package:moda/elbise.dart';

class Detay extends StatefulWidget {
  const Detay({super.key});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: "assets/modelgrid1.jpeg",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/modelgrid1.jpeg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Positioned(
             left: 15,
            right: 15,
            bottom: 20,
            child: Container(
              width: MediaQuery.of(context).size.width-30,
              height: 270,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Elbise()));
                          },
                          child: Hero(
                            tag: "assets/dress.jpg",
                            child: Container(
                              width: 120,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("assets/dress.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("LAMİNATED",style: TextStyle(fontSize: 30,color: Colors.black),),
                            Text("Louıs Woiten",style: TextStyle(fontSize: 20,color: Colors.black),),
                            Text("Bu elbise 1900 yıllarından "
                                "sonra güzeliğiyle göz kamaştrdı",style: TextStyle(fontSize: 16,color: Colors.black),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("20000tl",style: TextStyle(fontSize: 30,color: Colors.black),),
                        CircleAvatar(
                          backgroundColor: Colors.brown,
                          radius:25,
                          child: Icon(Icons.navigate_next,size: 30,color: Colors.white,),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
