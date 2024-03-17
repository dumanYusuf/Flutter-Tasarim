import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Icon(Icons.home,size: 200,color: Colors.white,)
            ,
          ),
        ),
        Text("AnaSayfa'da ilgilenmeniz gereken  öge yok",style: TextStyle(fontSize: 20,color: Colors.white),)
      ],
    );
  }
}
