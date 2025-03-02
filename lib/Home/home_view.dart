import 'package:flutter/material.dart';
import 'package:flutter_1st_try/Class13/dart_basic.dart';
import 'package:flutter_1st_try/Class13/midTerm.dart';
import 'package:flutter_1st_try/Class_5/Class_5/ButtonsGuide/buttons_guide_view.dart';
import 'package:flutter_1st_try/Class_5/Class_5/ExpandedGuide/expanded_guide_view.dart';
import 'package:flutter_1st_try/Class_5/Class_5/GridViewCountGuide/gridview_count_guide_view.dart';
import 'package:flutter_1st_try/PracticeAtHome/HomeTask.dart';
import 'package:flutter_1st_try/PracticeAtHome/show.dart';
import 'package:flutter_1st_try/class3/CardGuide/card_guide_view.dart';
import 'package:flutter_1st_try/class3/ColumnExample/column_example.dart';
import 'package:flutter_1st_try/class3/ContainerExample/container_example.dart';
import 'package:flutter_1st_try/class3/ImageGuide/image_view.dart';
import 'package:flutter_1st_try/class3/ListView/list_view.dart';
import 'package:flutter_1st_try/class3/RowExample/row_example.dart';
import 'package:flutter_1st_try/class3/ScaffoldViewGuide/scaffold_view_guide.dart';
import 'package:flutter_1st_try/class3/TextExample/text_example.dart';
import 'package:flutter_1st_try/class4/CircleAvatarGuide/circleAvatarGuide.dart';
import 'package:flutter_1st_try/class4/ListTileGuide/listTileGuide.dart';
import 'package:flutter_1st_try/class8_to_12/DrawerGuide/drawerguide.dart';
import 'package:flutter_1st_try/class8_to_12/NavigationGuide/home.dart';

class HomeScreen extends StatelessWidget {
  // List of pages and their titles
  final List<Map<String, dynamic>> pages = [
    {'title': 'My Practice', 'page': const Hometask()},
    {'title': 'Scaffold Example', 'page': const ScaffoldExample()},
    {'title': 'Container Example', 'page': const ContainerExample()},
    {'title': 'Row Example', 'page': const RowExample()},
    {'title': 'Column Example', 'page': const ColumnExample()},
    {'title': 'Text Example', 'page': const TextExample()},
    {'title': 'Card Example', 'page': const CardGuide()},
    {'title': 'ListView Example', 'page': const ListViewGuide()},
    {'title': 'Image Guide', 'page': const ImageGuide()},
    {'title': 'ListTile Guide', 'page': const Listtile()},
    {'title': 'Button Guide', 'page': const ButtonsGuide()},
    {'title': 'Expanded Guide', 'page': const ExpandedGuide()},
    {'title': 'GridViewCount Guide', 'page': const GridViewCountGuide()},
    {'title': 'Circle Avatar Guide', 'page': const Circleavatarguide()},
    {'title': 'Drawer Guide', 'page': const Drawerguide()},
    {'title': 'First Home Task', 'page': const HwTask()},
    {'title': 'FirstPage of Navigation', 'page': const NavigationGuide()},
    {'title': 'Dart Basic Screen', 'page': const DartBasic()},
    {'title': 'Mid Term ', 'page': ProductSetState()},

    // {'title': 'SizedBox Example', 'page': SizedBoxExample()},
    // {'title': 'Center Example', 'page': CenterExample()},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets List')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index]['title']),
            onTap: () {
              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}
