import 'package:delivery_app/pages/home_page/widgets/app_bar_home.dart';
import 'package:delivery_app/pages/home_page/widgets/item_list.dart';
import 'package:delivery_app/pages/home_page/widgets/option_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                AppBarHome(),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 30, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OptionButton(
                          colorBackground: Colors.yellow[700],
                          name: 'Burger',
                          value: '12',
                        ),
                        OptionButton(
                          colorBackground: Colors.white,
                          name: 'Pizza',
                          value: '25',
                        ),
                        OptionButton(
                          colorBackground: Colors.white,
                          name: 'Rolls',
                          value: '34',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    child: ItemList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
