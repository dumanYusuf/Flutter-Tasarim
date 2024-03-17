import 'package:flutter/material.dart';

class Kitaplik extends StatefulWidget {
  @override
  State<Kitaplik> createState() => _KitaplikState();
}

class _KitaplikState extends State<Kitaplik> {
  var mycontroller = PageController(initialPage: 0, keepPage: true, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            controller: mycontroller,
            pageSnapping: true,
            onPageChanged: (index) {
              debugPrint("$index");
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/witcher.webp"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: IconButton(onPressed: (){},
                      icon: Icon(Icons.play_circle,
                        size: 80,
                        color: Colors.black,
                      ),
                  )
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/dag.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child:IconButton(onPressed: (){},
                    icon: Icon(Icons.play_circle,
                      size: 80,
                      color: Colors.black,
                    ),
                  )
                ),

              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/laca.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: IconButton(onPressed: (){},
                    icon: Icon(Icons.play_circle,
                      size: 80,
                      color: Colors.black,
                    ),
                  )
                ),

              )

            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
          image: DecorationImage(
             image: AssetImage("assets/cret.webp"),
                    fit: BoxFit.cover,
                   ),
            ),
          child:IconButton(onPressed: (){},
            icon: Icon(Icons.play_circle,
              size: 80,
              color: Colors.black,
            ),
          ) ,
          ),
      ],
    );
  }
}
