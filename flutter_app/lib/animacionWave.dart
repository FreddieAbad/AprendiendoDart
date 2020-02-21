import 'dart:math';
import 'dart:ui' as ui;
import 'package:vector_math/vector_math.dart' as Vector;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class AnimacionWave extends StatefulWidget {
  @override
  _AnimacionWaveState createState() => new _AnimacionWaveState();

  AnimacionWave() {
    timeDilation = 1.0;
  }
}

class _AnimacionWaveState extends State<AnimacionWave> {
  @override
  Widget build(BuildContext context) {
    Size size = new Size(MediaQuery.of(context).size.width, 300.0);
    return new Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
          child: Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new ColorCurveBody(size: size, xOffset: 10, yOffset: -100),
              new ColorCurveBody(
                  size: size, xOffset: 10, yOffset: 195, color: Colors.green),
              new ColorCurveBody(
                  size: size, xOffset: 10, yOffset: 209, color: Colors.white),
              new ColorCurveBody(
                  size: size, xOffset: 10, yOffset: 215, color: Colors.indigo),
              new Positioned(
                  top: 200,
                  left: (MediaQuery.of(context).size.width / 2) - 50,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xfff0ad4e), width: 5),
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                'https://scontent.fcue1-1.fna.fbcdn.net/v/t1.0-9/47050594_987652188089381_7367154606805090304_n.png?_nc_cat=108&_nc_oc=AQm6gIEWVVhzqBVhmxOWqscRZIHjfyxjyKMJ55D_1ZP5V1nAKzRxWpOFDGegA-t_Rr8&_nc_ht=scontent.fcue1-1.fna&oh=04ab040848f7343b834096870307604a&oe=5EF7DFCD'))),
                  ))
            ],
          ),
        ],
      )),
    );
  }
}

class ColorCurveBody extends StatefulWidget {
  final Size size;
  final int xOffset;
  final int yOffset;
  final Color color;

  ColorCurveBody(
      {Key key, @required this.size, this.xOffset, this.yOffset, this.color})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _ColorCurveBodyState();
  }
}

class _ColorCurveBodyState extends State<ColorCurveBody>
    with TickerProviderStateMixin {
  AnimationController animationController;
  List<Offset> animList1 = [];

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animationController.addListener(() {
      animList1.clear();
      for (int i = -2 - widget.xOffset;
          i <= widget.size.width.toInt() + 2;
          i++) {
        animList1.add(new Offset(
            i.toDouble() + widget.xOffset,
            sin((animationController.value * 360 - i) %
                        360 *
                        Vector.degrees2Radians) *
                    20 +
                50 +
                widget.yOffset));
      }
    });
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      child: new AnimatedBuilder(
        animation: new CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
        builder: (context, child) => new ClipPath(
          child: widget.color == null
              ? Image.network(
                  'https://expat-03cdkbceglbjg.stackpathdns.com/upload/guide/1540782368-accommodation-in-cuenca-news_item_slider-t1540782368.jpg',
                  width: widget.size.width,
                  height: widget.size.height,
                  fit: BoxFit.cover,
                )
              : new Container(
                  width: widget.size.width,
                  height: widget.size.height,
                  color: widget.color,
                ),
          clipper: new WaveClipper(animationController.value, animList1),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  final double animation;

  List<Offset> waveList1 = [];

  WaveClipper(this.animation, this.waveList1);

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.addPolygon(waveList1, false);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) =>
      animation != oldClipper.animation;
}
