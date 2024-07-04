import 'package:flutter/material.dart';

class InteractiveProgress extends StatefulWidget {
  @override
  _InteractiveProgressState createState() => _InteractiveProgressState();
}

class _InteractiveProgressState extends State<InteractiveProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        value: _animation.value,
      ),
    );
  }
}
