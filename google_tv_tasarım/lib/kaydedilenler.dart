import 'package:flutter/material.dart';

class Kaydedilenler extends StatefulWidget {

  @override
  State<Kaydedilenler> createState() => _KaydedilenlerState();
}

class _KaydedilenlerState extends State<Kaydedilenler> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController=TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
       appBar: AppBar(title:Text("Kaydedilenler",
       style: TextStyle(fontSize: 24,color: Colors.white),)
         ,backgroundColor: Colors.grey.shade900,
         centerTitle: true,

         bottom: TabBar(
           controller: tabController,
             tabs:[
               Tab(icon: Icon(Icons.paste,size: 30,),child: Text("Dizi Geçmişi",
                 style: TextStyle(color: Colors.white,
                 fontSize: 20),
               ),),
               Tab(icon: Icon(Icons.library_add_rounded,size: 30,),child: Text("Daha Sonra",
                 style: TextStyle(color: Colors.white,
                 fontSize: 20),
               ),)
             ]
         ),
       ),
        body: TabBarView(
          physics: PageScrollPhysics(parent: NeverScrollableScrollPhysics()),
          controller: tabController,
            children: [
                   SingleChildScrollView(
                     child: Column(
                       children: [
                         Container(
                           width: double.infinity,
                           height: 200,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                               image: AssetImage("assets/world.jpg"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child: IconButton(onPressed: (){},
                             icon: Icon(Icons.play_circle,
                               size: 50,
                               color: Colors.black,
                             ),
                           ),
                         ),
                         Container(
                           width: double.infinity,
                           height: 200,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                               image: AssetImage("assets/hobbit.jpg"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child: IconButton(onPressed: (){},
                             icon: Icon(Icons.play_circle,
                               size: 50,
                               color: Colors.black,
                             ),
                           ),
                         ),
                         Container(
                           width: double.infinity,
                           height: 200,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                               image: AssetImage("assets/yuzik.jpg"),
                               fit: BoxFit.cover,
                             ),
                           ),
                           child: IconButton(onPressed: (){},
                             icon: Icon(Icons.play_circle,
                               size: 50,
                               color: Colors.black,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/witcher.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(onPressed: (){},
                        icon: Icon(Icons.play_circle,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/meg.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(onPressed: (){},
                        icon: Icon(Icons.play_circle,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/karr.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(onPressed: (){},
                        icon: Icon(Icons.play_circle,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ]),


    );
  }
}
