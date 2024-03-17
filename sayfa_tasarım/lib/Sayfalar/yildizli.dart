import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yildiz extends StatefulWidget {
  const Yildiz({super.key});

  @override
  State<Yildiz> createState() => _YildizState();
}

class _YildizState extends State<Yildiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Icon(Icons.star,size: 300,color: Colors.white,),
          ),
        ),
        Text("Yıldız dosyası yok",style: TextStyle(fontSize: 20,color: Colors.white),)
      ],
    );
  }
}
