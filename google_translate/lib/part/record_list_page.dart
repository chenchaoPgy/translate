import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_data_page.dart';

class RecordListDemo extends StatefulWidget {
  @override
  _RecordListDemoState createState() => _RecordListDemoState();
}

class _RecordListDemoState extends State<RecordListDemo> {
  List<ListData> mList = [
    ListData('汉语', 'chinese', false),
    ListData('对话', 'dialogue', true),
    ListData('帅哥', 'Handsome guy', true),
    ListData('程序员', 'programmer', false),
    ListData('编程', 'program', false),
    ListData('测试', 'test', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: mList.length,
          itemBuilder: (BuildContext context, int pos) {
            return _itemView(pos);
          }),
    );
  }

  Widget _itemView(int pos) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(left: 8, right: 8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.grey[500]))),
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          mList[pos].chinese,
                          style: Theme.of(context).textTheme.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          height: 4,
                        ),
                        Text(
                          mList[pos].english,
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                            mList[pos].isChoose
                                ? Icons.star
                                : Icons.star_border,
                            color: mList[pos].isChoose
                                ? Colors.amberAccent
                                : Colors.black12),
                        onPressed: () {
                          setState(() {
                            mList[pos].isChoose = !mList[pos].isChoose;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
