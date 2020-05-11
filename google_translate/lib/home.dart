import 'package:flutter/material.dart';
import 'part/head.dart';
import 'part/text_field.dart';
import 'part/record_list_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Google Transtate'),
          centerTitle: true,
          elevation: 0,
//          actions: <Widget>[
//            IconButton(icon: Icon(Icons.search), onPressed: null)
//          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: null,
                accountEmail: null,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/head.png'),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                title: Text(
                  '首页',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue[600],
                ),
              ),
              ListTile(
                title: Text(
                  '翻译收藏家',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.star,
                ),
              ),
              ListTile(
                title: Text(
                  '离线翻译',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.border_right,
                ),
              ),
              ListTile(
                title: Text(
                  '设置',
                  style: TextStyle(color: Colors.black),
                ),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            HeadPart(),
            TextDemo(),
            Container(height: 10,),
            RecordListDemo(),
          ],
        ),
      ),
    );
  }
}
