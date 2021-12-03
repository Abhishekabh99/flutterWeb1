import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb1/constants/style.dart';
import 'package:flutterweb1/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
                text: "Dash",
                size: 20,
                color: lightGrey,
                weight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(.7),
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(.7),
                  )),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 21),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(
              text: "Abhishek Pandey",
              size: 16,
              color: Colors.black,
              weight: FontWeight.w400),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
