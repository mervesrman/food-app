import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuGrid extends StatefulWidget {
  MenuGrid({super.key});

  List<Map> foods = [
    {
      "name": "Yaprak Sarması",
      "img":
          'https://d17wu0fn6x6rgz.cloudfront.net/img/w/tarif/ogt/zeytinyagli_sarma.webp',
      "color": Colors.red
    },
    {
      "name": "Lahana Sarması",
      "img":
          "https://isbh.tmgrup.com.tr/sbh/2016/03/09/650x344/1457520234246.jpg",
      "color": Colors.lightGreen
    },
    {
      "name": "Mantı",
      "img":
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2017/02/kayseri-mantisi-onecikan-yeni.jpg",
      "color": Colors.pink
    },
    {
      "name": "İçli Köfte",
      "img":
          "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/icli-kofte-2-yemekcom.jpg",
      "color": Colors.cyan[900]
    },
    {
      "name": "Baklava",
      "img":
          "https://cdn.yemek.com/mnresize/940/940/uploads/2017/06/fistikli-baklava-yemekcom1.jpg",
      "color": Colors.deepPurple[200]
    },
    {
      "name": "Kuru Fasulye",
      "img":
          "https://im.haberturk.com/2022/10/04/3526205_7cb6a853e09e3d7f423b8a0d5e5970d3_640x640.jpg",
      "color": Colors.brown[300]
    },
    {
      "name": "Arabaşı",
      "img":
          "https://tarifinasil.com/wp-content/uploads/2021/11/nermin-yazilitas-arabasi-corbasi-tarifi.jpg",
      "color": Colors.yellowAccent
    },
  ];
//  "name":"",
  // "img":"",
//"color":Colors.
  @override
  State<MenuGrid> createState() => _MenuGridState();
}

class _MenuGridState extends State<MenuGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.foods.length,
      itemBuilder: (BuildContext ctx, index) {
        return Stack(
          children: [
            Container(
                //   width: 30,
                //   height: 30,
                decoration: BoxDecoration(
                  color: widget.foods[index]["color"],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: NetworkImage(widget.foods[index]["img"]),
                              scale: 5),
                        ),
                      ),
                      const SizedBox(
                          //   height: 5,
                          ),
                      Text(widget.foods[index]["name"]),
                    ],
                  ),
                )),
            const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.star,
                color: Colors.yellow,
                size: 24.0,
              ),
            )
          ],
        );
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, crossAxisSpacing: 5, mainAxisSpacing: 5),
    );
  }
}
