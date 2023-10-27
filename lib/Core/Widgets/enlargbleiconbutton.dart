import 'package:flutter/material.dart';
class EnlargeableIconButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Icon icon;
  final double scaleFactor;

  EnlargeableIconButton({
    required this.icon,
    this.onPressed,
    this.scaleFactor = 1.5,
  });

  @override
  _EnlargeableIconButtonState createState() => _EnlargeableIconButtonState();
}

class _EnlargeableIconButtonState extends State<EnlargeableIconButton> {
  double _scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.onPressed,
        onLongPress: widget.onPressed,
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _scaleFactor = widget.scaleFactor * details.scale;
          });
        },
        onScaleEnd: (_) {
          setState(() {
            _scaleFactor = 1.0; 
          });
        },
        child: Transform.scale(
          scale: _scaleFactor,
          child: widget.icon,
        ),
      ),
    );
  }
}