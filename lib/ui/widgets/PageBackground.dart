import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  final Widget child;
  PageBackground({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: child,
          ),
        )
      ],
    );
  }
}
