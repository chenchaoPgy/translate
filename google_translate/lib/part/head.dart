import 'package:flutter/material.dart';

class HeadPart extends StatefulWidget {
  @override
  _HeadPartState createState() => _HeadPartState();
}

class _HeadPartState extends State<HeadPart> {
  String _leftLanguage = '英语';
  String _rightLanguage = '中文(简体)';
  Color primaryColor = Colors.blue[600];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.grey[500]))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _leftLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 3),
                      child: ImageIcon(
                        AssetImage('images/ic_select_country.png'),
                        color: primaryColor,
                        size: 8,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            child: IconButton(
                icon: Icon(
                  Icons.compare_arrows,
                  color: primaryColor,
                ),
                onPressed: () {}),
          ),
          Expanded(
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _rightLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 3),
                      child: ImageIcon(
                        AssetImage('images/ic_select_country.png'),
                        color: primaryColor,
                        size: 8,
                      ),
                    ),
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
