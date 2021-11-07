import 'package:flutter/material.dart';

class DefaultTile extends StatefulWidget {
  final EdgeInsets padding;
  final Color color;
  final String text;
  final TextStyle style;
  final bool isAllCornersRounded;
  final TextAlign textAlign;

  const DefaultTile({
    Key? key,
    this.padding = const EdgeInsets.fromLTRB(0, 20, 0, 20),
    this.color = Colors.green,
    this.text = 'Test text',
    this.style = const TextStyle(fontSize: 30),
    this.isAllCornersRounded = false,
    this.textAlign = TextAlign.center
  }) : super(key: key);

  @override
  _DefaultTileState createState() => _DefaultTileState();
}

class _DefaultTileState extends State<DefaultTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: widget.isAllCornersRounded
          ? const BorderRadius.all(Radius.circular(10))
          : const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
      ),
      width: double.infinity,
      child: Center(
        child: Text(
          widget.text,
          style: widget.style,
          textAlign: widget.textAlign,
        )
      )
    );
  }
}
