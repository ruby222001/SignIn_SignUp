import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color color;
  final double padding;
  final double margin;

 const MyButton({super.key, 
  
    required this.onTap,
    required this.text,
    this.color = Colors.black,
    this.padding = 10.0,
    this.margin = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        margin: EdgeInsets.symmetric(horizontal: margin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
