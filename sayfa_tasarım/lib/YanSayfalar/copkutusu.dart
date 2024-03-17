import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_drive/Sayfalar/anasayfa.dart';
import 'package:google_drive/Sayfalar/yildizli.dart';

class CopKutusu extends StatelessWidget {
  const CopKutusu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        automaticallyImplyLeading: false,
        title:Row(
          children: [
            IconButton(
                onPressed: (){
                  Navigator.of(context).pop();

                },
                icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
               Text("Çöp Kutusu",style: TextStyle(fontSize: 24,color: Colors.white),),
               SizedBox(width: 170,),
               Icon(Icons.search,size: 30,color: Colors.white,)
          ],
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.delete_outline,size: 200,color: Colors.white,)),
          Text("Çöp kutusu boş",style: TextStyle(fontSize: 24,color: Colors.white),)
        ],
      ),
    );
  }
}
