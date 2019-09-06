import 'package:flutter/material.dart';

class  VIPView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color startColor = Colors.deepOrange;
    Color endColor = Colors.yellow;
    return  PhysicalModel(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: BoxDecoration(
            // 线性渐变
              gradient: LinearGradient(colors: [startColor,endColor])
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(//左边
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.hotel,size: 15,color: Colors.orange,),
                  Text('超级会员 ',style:TextStyle(fontSize: 14,color:Colors.deepOrange),),
                  Text('*已为我节省107元',style:TextStyle(fontSize: 12,color:Colors.grey),)
                ],
              ),
              Row(//右边
                children: <Widget>[
                Text('2.5 ',style:TextStyle(fontSize: 14,color:Colors.deepOrange),),
                Text('个奖励金',style:TextStyle(fontSize: 12,color:Colors.brown),),
                Icon(Icons.arrow_forward_ios,size: 12,color: Colors.grey,),
                ],
              )
            ],
          ),
        ),


    );
  }
}
