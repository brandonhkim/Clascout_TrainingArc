import 'image_banner.dart';
import 'package:flutter/material.dart';
import 'text_section.dart';
import '../../models/cat.dart';

class CatDetail extends StatelessWidget {
  final int _catID;

  CatDetail(this._catID);

  @override
  Widget build(BuildContext context) {
    final cat = Cat.fetchByID(_catID);

    return Scaffold(
        appBar: AppBar(
          title: Text(cat.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(cat.imagePath),
          ]..addAll(textSections(cat)),
        )
    );
  }
  
  List<Widget> textSections(Cat cat) {
    return cat.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}