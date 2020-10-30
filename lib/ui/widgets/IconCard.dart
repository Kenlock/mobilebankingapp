import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCard extends StatelessWidget {
  final String imageUrl;
  final String textLabel;
  final VoidCallback onPressed;

  final List<Map<String, dynamic>> services = [
    {
      'id': 'fundTransfer',
    }
  ];
  IconCard({
    @required this.imageUrl,
    @required this.textLabel,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 100,
        height: 120,
        child: Material(
          borderRadius: BorderRadius.circular(5),
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: SvgPicture.asset(
                      imageUrl,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  child: Center(
                    child: Text(
                      textLabel,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
