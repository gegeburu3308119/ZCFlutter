import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_module/superVip.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'item/YouhuiCategary.dart';
import 'item/YouhuiView.dart';
import 'item/fujin.dart';
import 'item/moreItems.dart';
import 'item/searchbar.dart';
class FirstRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open second route'),
          onPressed: () {

            print("open second page!");
            FlutterBoost.singleton.openPage("second", {});
//            FlutterBoost.singleton.open("second").then((Map value){
//              print("did recieve second route result");
//              print("did recieve second route result $value");
//            });

          },
        ),
      ),
    );
  }
}

class SecondRouteWidget extends StatelessWidget {
  List iconItems = [{"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'},
    {"url":'https://icon.52112.com/assets/images/icon-entro.png','name':'我的租房'}];
  List moreItems = [
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'},
    {"url":'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1014165636,631783323&fm=26&gp=0.jpg','tit':'东来顺','money':'299','star':'4',"pei":'5'}];
  List bannerList = ['https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902215246,1231572926&fm=26&gp=0.jpg',
    'https://tb1.bdstatic.com/tb/cms/ngmis/images/file_1567482765285.jpg',
    'https://tb1.bdstatic.com/tb/r/image/2017-11-17/63653a5b814350d1c472fe864cdc8351.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        MediaQuery.removePadding(context: context,removeTop: true, child:
        RefreshIndicator(
          displacement:100,
          child:ListView(

            children: <Widget>[
              SizedBox(height: 64,),
              SeachBar(),
              Container(
                height: 140,
                child:  Swiper(itemCount: bannerList.length,
                  autoplay: true, //自动播放
                  itemBuilder: (BuildContext context, int index) { //显示得Widget
                    return GestureDetector(
                      child: Image.network(
                        bannerList[index],
                        fit: BoxFit.fill, //图片适配方式
                      ),
                      onTap: () {
                        FlutterBoost.singleton.closePageForContext(context);
                      },
                    );
                  },
                  pagination: SwiperPagination(), //当前页指示器)

                ),
              ),
              _Iconitem(context),
              Padding(padding: EdgeInsets.all(10),child: VIPView(),),
              Text('  优惠专区',style: TextStyle(color:Colors.black),),
              YouhuiView(),
              Youhuis(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('  精品生活',style: TextStyle(color:Colors.black)),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('  查看更多',style: TextStyle(color:Colors.black38,fontSize: 10)),
                          Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,)
                        ],
                      ),
                    )
                  ]),

              FujinMaiGuop(),
              MoreItems(list: moreItems,),
            ],
          ) ,
          onRefresh: _handleReresh,

        )
         )

    );
  }

  Future<Null> _handleReresh()async {
     print('haha下来刷新了');
     return null;
  }

  _Iconitem(BuildContext context){

    return
       Wrap(
        spacing: 2, //主轴上子控件的间距
        runSpacing: 5, //交叉轴上子控件之间的间距
        children: _items(),
    );
  }

  List<Widget> _items(){
    return iconItems.map(
            (v) => (
                Container(
                  height: 60,
                   width: (320-12)/6,

                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Image.network(v['url'],fit: BoxFit.fill,height: 32,
                          width: 32,),
                        alignment: Alignment.center,
                      ),
                      Text(
                        v['name']??'未知',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.blueGrey,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      )
                    ],
                  ))
                )
    ).toList();

  }

}



class TabRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            FlutterBoost.singleton.openPage("second",{});
          },
          child: Text('Open second route'),
        ),
      ),
    );
  }
}

class FlutterRouteWidget extends StatelessWidget {
  final String message;

  FlutterRouteWidget({this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_boost_example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 80.0),
            child: Text(
              message ?? "This is a flutter activity",
              style: TextStyle(fontSize: 28.0, color: Colors.blue),
            ),
            alignment: AlignmentDirectional.center,
          ),
          Expanded(child: Container()),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                color: Colors.yellow,
                child: Text(
                  'open native page',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),

            ///后面的参数会在native的IPlatform.startActivity方法回调中拼接到url的query部分。
            ///例如：sample://nativePage?aaa=bbb
            onTap: () =>
                FlutterBoost.singleton.openPage("sample://nativePage", {
                  "query": {"aaa": "bbb"}
                }),
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                color: Colors.yellow,
                child: Text(
                  'open flutter page',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),

            ///后面的参数会在native的IPlatform.startActivity方法回调中拼接到url的query部分。
            ///例如：sample://nativePage?aaa=bbb
            onTap: () =>
                FlutterBoost.singleton.openPage("sample://flutterPage", {
                  "query": {"aaa": "bbb"}
                }),
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                color: Colors.yellow,
                child: Text(
                  'push flutter widget',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PushWidget()));
            },
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 80.0),
                color: Colors.yellow,
                child: Text(
                  'open flutter fragment page',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),
            onTap: () => FlutterBoost.singleton
                .openPage("sample://flutterFragmentPage",{}),
          )
        ],
      ),
    );
  }
}

class FragmentRouteWidget extends StatelessWidget {
  final Map params;

  FragmentRouteWidget(this.params);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_boost_example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 80.0),
            child: Text(
              "This is a flutter fragment",
              style: TextStyle(fontSize: 28.0, color: Colors.blue),
            ),
            alignment: AlignmentDirectional.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 32.0),
            child: Text(
              params['tag'] ?? '',
              style: TextStyle(fontSize: 28.0, color: Colors.red),
            ),
            alignment: AlignmentDirectional.center,
          ),
          Expanded(child: Container()),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                color: Colors.yellow,
                child: Text(
                  'open native page',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),
            onTap: () =>
                FlutterBoost.singleton.openPage("sample://nativePage",{}),
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                color: Colors.yellow,
                child: Text(
                  'open flutter page',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),
            onTap: () =>
                FlutterBoost.singleton.openPage("sample://flutterPage",{}),
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 80.0),
                color: Colors.yellow,
                child: Text(
                  'open flutter fragment page',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                )),
            onTap: () => FlutterBoost.singleton
                .openPage("sample://flutterFragmentPage",{}),
          )
        ],
      ),
    );
  }
}

class PushWidget extends StatefulWidget {
  @override
  _PushWidgetState createState() => _PushWidgetState();
}

class _PushWidgetState extends State<PushWidget> {
  VoidCallback _backPressedListenerUnsub;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

//    if (_backPressedListenerUnsub == null) {
//      _backPressedListenerUnsub =
//          BoostContainer.of(context).addBackPressedListener(() {
//        if (BoostContainer.of(context).onstage &&
//            ModalRoute.of(context).isCurrent) {
//          Navigator.pop(context);
//        }
//      });
//    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _backPressedListenerUnsub?.call();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterRouteWidget(message:"Pushed Widget");
  }
}
