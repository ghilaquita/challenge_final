
import 'package:flutter/material.dart';
import 'package:challenge_final/src/pages/bottom_nav_bar_page.dart';
import 'package:challenge_final/src/pages/home_page.dart';
import 'package:challenge_final/src/pages/selectable_text_page.dart';
import 'package:challenge_final/src/pages/tab_bars_page.dart';
import 'package:challenge_final/src/pages/stacks_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => HomePage(),
    '/bottomNav': (context) => BottomNavBarPage(),
    '/tabs': (context) => TabBarsPage(),
  //  '/drawers': (context) => DrawersPage(),
  //  '/listView': (context) => ListViewListTilesPage(),
  //  '/dataTable': (context) => DataTablePage(),
    '/selectableText': (context) => SelectableTextPage(),
    '/stack': (context) => StacksPage(),
  };
}