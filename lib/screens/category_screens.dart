import 'package:flutter/material.dart';
import '../components/list_category.dart';
import '../dummy_data.dart';

class CategoryScreens extends StatelessWidget {
  const CategoryScreens({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Wisata"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: CATEGORY_DUMMY_DATA
            .map((cat) =>
                ListCategory(cat.id, cat.title, cat.description, cat.image))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
