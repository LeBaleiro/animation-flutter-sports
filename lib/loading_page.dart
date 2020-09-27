import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 1),
      // reverseDuration: Duration(seconds: 5),
      vsync: this,
    );
    // animation = Tween(begin: 1.0, end: 2.0).animate(animationController);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animationController.forward();
    animationController.addStatusListener(animationStatusListener);
  }



  void animationStatusListener(AnimationStatus animationStatus) {
    if (animationStatus == AnimationStatus.completed) {
      animationController.reverse();
    } else if (animationStatus == AnimationStatus.dismissed) {
      animationController.forward();
    }
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Stack(children: [
            Positioned(
              top: (MediaQuery.of(context).size.height / 4 - 25) *
                      animation.value +
                  120,
              right: MediaQuery.of(context).size.width / 2 - 25,
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/sports.png"),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Carregando...', style: TextStyle(fontSize: 20,fontFamily: 'Inter'),),
            ),
          ]);
        },
      ),
    );
  }
}
