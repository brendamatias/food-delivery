import 'package:delivery_app/consts/consts_app.dart';
import 'package:flutter/material.dart';

class ItemOrder extends StatelessWidget {
  final String item;
  final String value;

  const ItemOrder({Key key, this.item, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                ConstsApp.burgerImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: 160,
            child: Row(
              children: <Widget>[
                Text(
                  '1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    'x',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  item,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
