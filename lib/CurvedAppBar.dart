import 'package:flutter/material.dart';

class CurvedAppBar extends StatefulWidget {
  const CurvedAppBar(
      {Key? key,
      this.backgroundColor = const Color(0xff051721),
      this.appBarheight = 100,
      this.appBarChild,
      this.body,
      this.radius = 70})
      : super(key: key);

  final Color backgroundColor;
  final double appBarheight, radius;
  final Widget? appBarChild, body;

  @override
  _CurvedAppBarState createState() => _CurvedAppBarState();
}

class _CurvedAppBarState extends State<CurvedAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: widget.appBarheight,
          color: widget.backgroundColor,
          child: Container(
            width: double.infinity,
            height: widget.appBarheight,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(widget.radius))),
            child: widget.appBarChild,
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.white,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius:
                  BorderRadius.only(topRight: Radius.circular(widget.radius)),
            ),
            child: widget.body,
          ),
        ))
      ],
    );
  }
}
