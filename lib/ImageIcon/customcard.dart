import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String plateText;
  final VoidCallback onTap; // or GestureTapCallback onTap;

  CustomCard({required this.plateText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 25.0,
      height: 55.0,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.amber,
              width: 10,
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: GestureDetector(
                onTap: onTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      plateText,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
