import 'package:flutter/material.dart';

class YouhuiView extends StatelessWidget {
  List youhuibigs = [{"image":'https://p1.meituan.net/merchantpic/23583a8ca4b5c5bbb34d449db4525df4381283.jpg@426w_240h_1e_1c','title':'美丽之源美容美体会馆',"money":'99',"des":'铁东区湖南街万科惠斯勒小区'},
  {"image":'https://p0.meituan.net/deal/c9b6d1c3c286754afe63da458630bd7740896.jpg@50_0_539_327a|388h_640w_2e_100Q|426w_240h_1e_1c','title':'巨无霸电烤大串四十部',"money":'108',"des":'铁西区大陆街46号（龙派东行50米)'}];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
           Padding(
             padding: EdgeInsets.all(7),
             child: Row(
               children: _items()
             ),
           )
        ],
      ),
    );
  }

  List<Widget> _items(){
     return youhuibigs.map((v)=>(
      Expanded(flex: 1, child: PhysicalModel(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        clipBehavior: Clip.antiAlias,
        child: Stack(
//        fit: StackFit.expand,
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          Image.network(v['image'],fit: BoxFit.fill, height: 160,
            width: 140,),
          Positioned(
            top: 0,
            child:Container(
              height: 60,
              child:  Text(v['title'],style: TextStyle(
                  backgroundColor: Colors.red,
                  color: Colors.white,
                  fontSize: 12
              ),)

            )

          ),
          Positioned(
            bottom: 5,
            width: 100,
            height: 50,
            child: Container(
              height: 50,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(v['money'],style: TextStyle(fontSize: 12,color: Colors.black),),
                  Text(v['des'],style: TextStyle(fontSize: 12,color: Colors.red),),
                ],

              ),
            ),

          )
        ],
        overflow:Overflow.clip,
      ),))

     )
     ).toList();



  }
}
