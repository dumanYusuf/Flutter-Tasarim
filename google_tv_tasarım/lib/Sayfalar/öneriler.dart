import 'package:flutter/material.dart';
import 'package:google_tv/anasayfa.dart';

class Onerilen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){
                     Navigator.of(context).pop();
                    },
                      icon: Icon(Icons.keyboard_arrow_left,
                        size: 30,
                        color: Colors.white,
                    ),
                    ),
                    Text("Sizin İçin Önerilen Diziler",
                      style: TextStyle(fontSize: 24,color: Colors.white),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search,
                      size: 30,
                      color: Colors.white,
                    )
                    )
                
                  ],
                ),
              ),
              // ...

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/dag.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        width: 180,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/world.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// ...

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 140,
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
                    SizedBox(width: 20,),
                    Container(
                      width: 180,
                      height: 140,
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

                  ],
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/ezel.jpg"),
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
                    SizedBox(width: 20,),
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/creed.jpg"),
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
          
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 140,
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
                    SizedBox(width: 20,),
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/kurt.jpg"),
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

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/dag.jpg"),
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
                    SizedBox(width: 20,),
                    Container(
                      width: 180,
                      height: 140,
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

                  ],
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
