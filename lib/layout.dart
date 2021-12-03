import 'package:flutter/material.dart';
import 'package:flutterweb1/helpers/responsiveness.dart';
import 'package:flutterweb1/widgets/large_screen.dart';

import 'package:flutterweb1/widgets/small_screen.dart';
import 'package:flutterweb1/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: topNavigationBar(context, scaffoldkey),
        drawer: const Drawer(),
        body: const ResponsiveWidget(
            largeScreen: LargeScreen(),
            mediumScreen: null,
            smallScreen: SmallScreen()));
  }
}
