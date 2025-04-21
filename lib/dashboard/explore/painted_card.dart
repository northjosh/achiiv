import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textwrap/textwrap.dart';

class PaintedCard extends StatelessWidget {

  final double? height;
  final double? width;
  final Color? color;
  final CustomPainter? painter;
  final String? text;
  final Widget? icon;
  final void Function()? onTap;
  const PaintedCard({super.key, this.height, this.width, this.color, this.painter,  this.text,  this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 160,
        width: width ?? 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color ?? Color(0xFF20C997),
        ),
        child: Stack(
          children: [
            CustomPaint(
              painter: CardPainter(),
              size: Size.infinite,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.1),
                    child: icon ?? SvgPicture.asset(
                      'images/hearth.svg',
                      semanticsLabel: "Settings Icon",
                      height: 24,
                      width: 24,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        fill( text ?? 'Flexible Investments', width: 11),
                        style: TextStyle(color: Colors.white),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 16),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(34, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;

    final path = Path();

    // path.moveTo(size.width * 0.4, size.height);
    // path.quadraticBezierTo(
    //   0 ,
    //   1.25,
    //   size.width,
    //   size.height * 0.5,
    // );

    path.moveTo(size.width * 0.4, size.height); // Starting point of the arc
    path.arcToPoint(
      Offset(size.width, size.height * 0.4), // Ending point of the arc
      radius: Radius.circular(size.width * 0.6), // Radius of the arc
      clockwise: true, // Direction of the arc
    );

    // path.arcToPoint(Offset.zero, radius: Radius.circular(2));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
