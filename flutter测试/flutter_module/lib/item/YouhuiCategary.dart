import 'package:flutter/material.dart';

class Youhuis extends StatelessWidget {
  List<Map> list = [{'url':'https://f10.baidu.com/it/u=2828659244,4239465633&fm=72','name':'五折封顶'},{'url':'https://f11.baidu.com/it/u=324257850,967749459&fm=72','name':'大牌甜品'},{'url':'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3211170104,239404&fm=15&gp=0.jpg','name':'是；听水果'},{'url':'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2012569705,738909849&fm=26&gp=0.jpg','name':'新店半价'}];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:_items(),
      ),
    );
  }

  List<Widget> _items(){

    return list.map((v)=>Expanded(flex: 1,child:
    FractionallySizedBox(
       heightFactor: 1,
       child: Stack(
         alignment: AlignmentDirectional.topCenter,
         children: <Widget>[
           Image.network(
             v['url'],
             fit: BoxFit.fill,
             height: 120,
             width: (320-5*7)/4,
           ),
           Container(
             color: Colors.white,
             margin: const EdgeInsets.only(top: 11),
             child: Text(
               v['name'],
               style: TextStyle(
                   fontSize: 12,
                   color: Colors.red),

             ),
           ),
         ],

       ),

    )

      )).toList();

  }
}
