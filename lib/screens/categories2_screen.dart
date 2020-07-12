import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';
import '../widgets/main_drawer.dart';

class Categories2Screen extends StatelessWidget {
  static const routeName = '/categories2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teach JSON 2'),
      ),
      drawer: MainDrawer(),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 600,
          childAspectRatio: 8 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
