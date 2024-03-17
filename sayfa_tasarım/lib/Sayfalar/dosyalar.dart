import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dosyalar extends StatefulWidget {
  const Dosyalar({super.key});

  @override
  State<Dosyalar> createState() => _DosyalarState();
}

class _DosyalarState extends State<Dosyalar>with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        bottom: TabBar(
          controller: tabController,
            tabs:[
              Tab(
                child: Text("Drive'ım",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Tab(
                child: Text("Bilgisayar'ım",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ]
        ),
      ),
      body: TabBarView(
        controller: tabController,
          children:[
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.add_to_drive,size: 200,color: Colors.white,),
               Text("Tüm dosyalarınızı tek biyerde toplayın",style: TextStyle(fontSize: 20,color: Colors.white),)
             ],
           ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_to_drive,size: 200,color: Colors.white,),
                Text("Drive ile senkronize edilen dosya yok",style: TextStyle(fontSize: 20,color: Colors.white),)

              ],
            )
          ]
      ),
    );
  }
}
