import 'package:flutter/material.dart';
import 'package:ui_challenge_3/widgets/widgets.dart';

/// mobile version widget
class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  Widgets widgets = Widgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            __buildBody(),
          ],
        ),
      ),
    );
  }

  __buildBody() {
    return Expanded(
      child: Column(
        children: [
          widgets.mobileHeader(),
          Expanded(
            child: widgets.chatlist(),
          ),
        ],
      ),
    );
  }
}
