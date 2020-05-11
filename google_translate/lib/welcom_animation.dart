import 'package:flutter/material.dart';
import 'home.dart';

class WelcomeAnimation extends StatefulWidget {
  @override
  _WelcomeAnimationState createState() => _WelcomeAnimationState();
}

class _WelcomeAnimationState extends State<WelcomeAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    //初始化_controller
    //vsync: this  必填项 （混入with SingleTickerProviderStateMixin才不会报错）
    _controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 2));
    //初始化 _animation
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    //添加监听
    _animation.addStatusListener((status) {
      switch (status) {
        case AnimationStatus.completed:
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) {
            return Home();
          }), (route) => route == null);
          break;
        default:
          break;
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        'images/welcom.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
