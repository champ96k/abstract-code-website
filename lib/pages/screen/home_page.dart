import 'package:abstract_coder/pages/widget/content_page.dart';
import 'package:abstract_coder/pages/widget/menu_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu
              orientation == Orientation.portrait ? Container() : MenuBar(),
              // Content page
              ContentPage(),
            ],
          )
        ),
    );
  }
}
