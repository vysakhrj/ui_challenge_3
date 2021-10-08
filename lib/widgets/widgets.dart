import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Widgets {
  webHeader() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/neoito_logo.svg"),
          const Spacer(),
          const Text(
            "NEOITO",
            style: TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }

  textfield(TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            color: Colors.deepOrange,
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              borderSide: BorderSide(color: Colors.deepOrange)),
          hintText: "Search your teammates "),
    );
  }

  chatlist() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text("User name"),
                subtitle: Text(
                  "Last Message",
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text("09:41 am"),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
            ],
          );
        });
  }

  chatbg(Size size) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/chat_background.svg",
            height: size.height * 0.5,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Connect with colleagues seamlessly and to ease up the work flow.",
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }

  mobileHeader() {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.only(top: 15, left: 15, right: 20, bottom: 20),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/neoito_logo.svg"),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "NEOITO",
            style: TextStyle(fontSize: 22),
          ),
          const Spacer(),
          const Icon(
            Icons.search,
            color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}
