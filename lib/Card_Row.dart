import 'package:flutter/material.dart';

class CardRow extends StatelessWidget {
  const CardRow({
    required this.text,
    required this.icon,
    required this.color,
    this.fontSize = 16.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    Key? key,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final Color color;
  final double fontSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          icon,
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
