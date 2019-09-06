import 'package:flutter/material.dart';

class MoreItems extends StatefulWidget {
  List list =[];
  MoreItems({Key key,this.list}):super(key:key);
  @override
  _MoreItemsState createState() => _MoreItemsState();
}

class _MoreItemsState extends State<MoreItems> {

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _items(widget.list)
    );
  }

  List<Widget> _items(List list){
      return widget.list.map((v)=>
         _item(v)
      ).toList();
  }

  Widget _item(param){
    return Card(
       child: Container(
         padding: EdgeInsets.all(5),
         height: 130,
         child: Row(
           mainAxisAlignment:  MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Image.network(param['url'],fit: BoxFit.cover,height: 60,width: 60,),
             SizedBox(width: 15,),
             Expanded(
               flex: 1,
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    Text(param['tit'],textAlign: TextAlign.left,style: TextStyle(fontSize: 15,color: Colors.black,)),
                    Row(
                      children: <Widget>[
                         Icon(Icons.star,size: 10,color: Colors.orange,),
                         Text(param['star'],style: TextStyle(fontSize: 10,color:Colors.orange,),),
                         SizedBox(width: 20),
                         Text('月售'+'902'+'笔',style: TextStyle(fontSize:12 ),),
                      ],
                    ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Container(
                            width: 100,
                            height: 25,
                            child:Row(
                              children: <Widget>[
                                Text('起送￥'+param['money'],style: TextStyle(color: Colors.grey,fontSize: 10),),
                                Text('配送￥'+param["pei"],style: TextStyle(color: Colors.grey,fontSize: 10),),
                              ],
                            )
                        ),
                         Container(
                           width: 100,
                           height: 25,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[
                                 Expanded(child:
                                   Container(
                                     height: 20,
                                     padding: EdgeInsets.only(top: 3),
                                     decoration:BoxDecoration(border: Border.all(width: 1,color: Colors.lightBlue)),
                                     child: Text('准时达',style: TextStyle(fontSize: 10,color: Colors.lightBlue),textAlign: TextAlign.center,),
                                   )
                                   ,flex: 1,),
                                 Expanded(child:
                                 Container(
                                   height: 20,
                                   padding: EdgeInsets.only(top: 3),
                                   color: Colors.lightBlue,
                                   child: Text('蜂鸟快送',style: TextStyle(fontSize: 10,color: Colors.white),textAlign: TextAlign.center),
                                 )
                                   ,flex: 1,)
                             ],
                           ),
                         )
                       ],
                      ),
                     Row(
                         children: <Widget>[
                         Text('今天的薯条很nice',style: TextStyle(color: Colors.deepOrange,fontSize: 10,backgroundColor: Colors.yellow),),
                       ],
                       ),
                   Container(
                       height: 20,
                       child: Row(
                           children:  _stars()
                       )),
                   Container(
                       height: 22,
                       child: Row(
                           children:  _comments()
                       )),
                 ],
               ),
             ),
           ],

         ) ,
       ),

    );

  }


  _comments(){
    return ['好吃','不贵','环境优美','下次不来了'].map((f)=>
        Container(
          margin: EdgeInsets.only(right: 5),
          decoration:BoxDecoration(
             border: Border.all(width: 1,color: Colors.deepOrangeAccent),
          ),
          child: Text(f,style: TextStyle(fontSize: 10,color: Colors.deepOrange,),),
        )
    ).toList();

  }

  _stars(){
    return ['','','',''].map((f)=>
             Icon(Icons.star,size: 15,color: Colors.yellowAccent,)
    ).toList();

  }
}
