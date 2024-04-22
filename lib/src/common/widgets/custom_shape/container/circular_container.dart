import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
       this.padding=0.0,
      this.child,
      this.backgroundColor = Colors.black,
      this.margin, this.boxShadow});

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final List<BoxShadow> ?boxShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: Container(
        margin: margin,
        padding: EdgeInsets.all(padding),
        width: width,
        height: height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius),color: backgroundColor,boxShadow: boxShadow),
        child: child,
      ),
    );
  }
}
