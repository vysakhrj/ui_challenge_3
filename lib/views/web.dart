import 'package:flutter/material.dart';
import 'package:ui_challenge_3/widgets/widgets.dart';

///web version widget
class Web extends StatefulWidget {
  const Web({Key? key, this.isMedium}) : super(key: key);
  final bool? isMedium;

  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  Widgets widgets = Widgets();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: <Widget>[
          _buildChatSection(),
          const Divider(
            color: Colors.grey,
          ),
          _buildDashboard(size)
        ],
      ),
    );
  }

  _buildChatSection() {
    TextEditingController searchController = TextEditingController();
    return Expanded(
      flex: widget.isMedium! ? 1 : 3,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            widgets.webHeader(),
            const SizedBox(
              height: 15,
            ),
            widgets.textfield(searchController),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: widgets.chatlist(),
            ),
          ],
        ),
      ),
    );
  }

  _buildDashboard(Size size) {
    return Expanded(
      flex: widget.isMedium! ? 2 : 8,
      child: widgets.chatbg(size),
    );
  }
}
