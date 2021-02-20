library flutter_nested;

import 'package:flutter/material.dart';

///支持嵌套滚动的列表可以自定义头部和每行显示的行数
///----------
///----|-----
///----|-----
class HiNestedScrollView extends StatelessWidget {
  final List<Widget> headers;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final SliverGridDelegate gridDelegate;
  final ScrollController controller;
  final EdgeInsetsGeometry padding;

  const HiNestedScrollView(
      {Key key,
      this.headers = const [],
      @required this.itemCount,
      @required this.gridDelegate,
      @required this.itemBuilder,
      this.controller,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        controller: controller,
        padding: padding,
        children: <Widget>[
          ...headers,
          GridView.builder(
            padding: EdgeInsets.all(0),
            //fix 不能一起滚动的问题
            physics: NeverScrollableScrollPhysics(),
            //fix嵌套滚动
            shrinkWrap: true,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
            gridDelegate: gridDelegate,
          )
        ]);
  }
}
