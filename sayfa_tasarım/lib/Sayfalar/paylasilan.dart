import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Paylasilan extends StatefulWidget {
  const Paylasilan({super.key});

  @override
  State<Paylasilan> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<Paylasilan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Icon(Icons.share,size: 300,color: Colors.white,),
          ),
        ),
        Text("Paylaşılan dosya yok",style: TextStyle(fontSize: 20,color: Colors.white),)
      ],
    );
  }
}
