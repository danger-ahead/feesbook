import 'package:flutter/material.dart';

class FeesContainer extends StatefulWidget {
  const FeesContainer(
      {Key? key,
      required this.title,
      required this.amount,
      required this.color,
      required this.backgroundColor})
      : super(key: key);

  final String title, amount;
  final Color color, backgroundColor;

  @override
  State<FeesContainer> createState() => _FeesContainerState();
}

class _FeesContainerState extends State<FeesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.0,
      width: 166.0,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: widget.color,
              fontSize: 14.0,
            ),
          ),
          Text(
            widget.amount,
            style: TextStyle(
              color: widget.color,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
