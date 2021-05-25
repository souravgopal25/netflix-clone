import 'package:flutter/material.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icons;
  final String title;
  final Function onTap;
  const VerticalIconButton(
      {Key key,
      @required this.icons,
      @required this.title,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icons,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
