import 'package:flutter/material.dart';
class SeachBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.all(15),
        child: PhysicalModel(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            clipBehavior: Clip.antiAlias,
            child:
            Container(
              height: 32,
              color: Color.fromRGBO(213, 213, 213, 0.8),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.search,color:Colors.black,size: 12,),
                  Text('搜索',style: TextStyle(fontSize: 14,color: Colors.black),)
                ],

              ),
            ))
      );

  }
}
