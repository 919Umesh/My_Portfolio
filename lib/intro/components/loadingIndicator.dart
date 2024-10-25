import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

const double defaultPadding = 16.0;

class AnimatedLoading extends StatefulWidget {
  const AnimatedLoading({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedLoadingState createState() => AnimatedLoadingState();
}

class AnimatedLoadingState extends State<AnimatedLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            alignment: Alignment.center,
            child: LoadingAnimationWidget.inkDrop(
              color: Colors.blue,
              size: 100,
            ),
          ),
        );
      },
    );
  }
}

