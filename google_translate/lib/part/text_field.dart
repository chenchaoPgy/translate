import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {
  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(0),
      child: Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              EditText(),
              IconText(),
            ],
          )),
    );
  }
}

class EditText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 15, top: 2, right: 15, bottom: 5),
        child: TextField(
          decoration:
              InputDecoration(hintText: '点按即可输入文本', border: InputBorder.none),
          style: TextStyle(color: Colors.black, fontSize: 25),
          cursorColor: Colors.grey[400],
          cursorWidth: 1.0,
          maxLines: 999,
        ),
      ),
    );
  }
}

class IconText extends StatefulWidget {
  @override
  _IconTextState createState() => _IconTextState();
}

class _IconTextState extends State<IconText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 5,
          ),
          IconTextDemo(
            lable: '相机',
            iconData: Icons.camera_alt,
          ),
          IconTextDemo(
            lable: '手写',
            iconData: CupertinoIcons.pen,
          ),
          IconTextDemo(
            lable: '对话',
            iconData: Icons.dialer_sip,
          ),
          IconTextDemo(
            lable: '语音',
            iconData: Icons.keyboard_voice,
          ),
          Container(
            width: 5,
          ),
        ],
      ),
    );
  }
}

class IconTextDemo extends StatefulWidget {
  final String lable;
  final IconData iconData;

  IconTextDemo({Key key, @required this.lable, this.iconData})
      : super(key: key);

  @override
  _IconTextDemoState createState() => _IconTextDemoState();
}

class _IconTextDemoState extends State<IconTextDemo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print(widget.lable);
        },
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: <Widget>[
              Icon(
                widget.iconData,
                color: Colors.blue[600],
              ),
              Text(
                widget.lable,
              ),
            ],
          ),
        ));
  }
}
