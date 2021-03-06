import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/flutter_alarm/config/router_manager.dart';
import 'package:oktoast/oktoast.dart';

class HomePage extends StatelessWidget{

  final List<String> listGif = [
    'assets/flutter_alarm/screenShot/page1.gif',
    'assets/flutter_alarm/screenShot/page1.gif',
    'assets/flutter_alarm/screenShot/page3.gif',
    'assets/flutter_alarm/screenShot/page4.gif',
    'assets/flutter_alarm/screenShot/page1.gif',



  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter ui"),
        centerTitle: true,
        elevation: 0,
      ),
      body: _getGridView(context),
    );
  }

  _getGridView(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: GridView.builder(
          itemCount: listGif.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //横轴元素数量
            crossAxisCount: 2,
            //纵轴间距
            mainAxisSpacing: 10,
            //横轴间距
            crossAxisSpacing: 10,
            childAspectRatio: 1
          ),
          itemBuilder: (context,index){
            return _getItem(index,context);
          }
      ),
    );
  }

  _getItem(int index,BuildContext context) {
    return  InkWell(
      onTap: (){
        RouterManager.to(index, context);
      },
      child: Card(
          child: Image.asset(listGif[index]),
          elevation: 0,
          // shadowColor: Colors.primaries[index % Colors.primaries.length],
          color: Colors.white,
        ),
    );
  }
}
