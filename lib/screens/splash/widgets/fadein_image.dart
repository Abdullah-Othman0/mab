import 'package:flutter/material.dart';

class FadeInImageWidget extends StatefulWidget {
  final String imageUrl;
  const FadeInImageWidget({super.key, required this.imageUrl});

  @override
  _FadeInImageWidgetState createState() => _FadeInImageWidgetState();
}

class _FadeInImageWidgetState extends State<FadeInImageWidget> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(milliseconds: 3200),
      child: Image.asset(widget.imageUrl),
    );
  }
}
