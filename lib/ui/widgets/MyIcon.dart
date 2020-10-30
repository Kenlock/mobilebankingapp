import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatelessWidget {
  final String iconUrl;
  final String textLabel;
  final VoidCallback onClick;
  MyIcon(
      {@required this.iconUrl,
      @required this.textLabel,
      @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: SvgPicture.asset(
                iconUrl,
                height: 50,
                width: 50,
              ),
            ),
            Container(
              width: 50,
              child: Text(
                textLabel,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
