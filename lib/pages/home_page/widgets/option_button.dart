import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final Color colorBackground;
  final String name;
  final String value;

  const OptionButton({Key key, this.colorBackground, this.name, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(50),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0.0, 6.0),
            color: Color(0xffEDEDED),
            blurRadius: 40.0,
          ),
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 16, bottom: 26, right: 16),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: colorBackground == Colors.white
                        ? Colors.grey[200]
                        : Colors.white,
                    width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(Icons.fastfood),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Opacity(
                opacity: 0.2,
                child: Container(
                  width: 2,
                  height: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
