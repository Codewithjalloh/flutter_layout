import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color color;
  final double size;

  const Star({Key? key, required this.color, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomPaint(
        painter: _StartPainter(color),
      ),
    );
  }
}

class _StartPainter extends CustomPainter {
  final Color color;

  _StartPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();
    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.618, size.height * 0.382);
    path.lineTo(size.width, size.height * 0.382);
    path.lineTo(size.width * 0.691, size.height * 0.618);
    path.lineTo(size.width * 0.809, size.height);
    path.lineTo(size.width * 0.5, size.height * 0.7639);
    path.lineTo(size.width * 0.191, size.height);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(0, size.height * 0.382);
    path.lineTo(size.width * 0.382, size.height * 0.382);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegae) {
    return false;
  }
}



class StartRating extends StatelessWidget {
  final Color color;
  final int value;
  final double startSize;

  const StartRating({
    Key,
    key,
    required this.value,
    this.color = Colors.deepOrange,
    this.startSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          value,
          (_) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: Star(
                  color: color,
                  size: startSize,
                ),
              ),),
    );
  }
}
