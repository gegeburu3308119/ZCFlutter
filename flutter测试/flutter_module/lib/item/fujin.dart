import 'package:flutter/material.dart';
//附近模块
class FujinMaiGuop extends StatelessWidget {
  List<Map> list = [{'url':'https://f10.baidu.com/it/u=2828659244,4239465633&fm=72','name':'五折封顶'},
    {'url':'https://f11.baidu.com/it/u=324257850,967749459&fm=72','name':'大牌甜品'},
    {'url':'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3211170104,239404&fm=15&gp=0.jpg','name':'是；听水果'},
    {'url':'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2012569705,738909849&fm=26&gp=0.jpg','name':'新店半价'}];
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 180,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: list.length,
         padding: EdgeInsets.all(10.0),
         itemBuilder: (context, i) => new Card(
          child: Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(list[i]['url'],fit: BoxFit.fill,width: 120,height:120),
                Text(list[i]['name'],style: TextStyle(fontSize: 12,color: Colors.black26),maxLines: 2,textAlign: TextAlign.center),
                Text(list[i]['des']??'未知类型',style: TextStyle(fontSize: 10,color: Colors.grey),maxLines: 2,textAlign: TextAlign.center)
              ],
              
            ),
    
          ),
    )
       ),
    );
  }
}
