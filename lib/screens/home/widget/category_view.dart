import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<String> categories = ["Trabalhos", "Estudos", "Casa"];

  int _categoryIndex = 0;

  void selectForward() {
    setState(() {
      _categoryIndex++;
    });
  }

  void selectBackward() {
    setState(() {
      _categoryIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _categoryIndex > 0 ? selectBackward : null,
        ),
        Text(
          categories[_categoryIndex].toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _categoryIndex < categories.length - 1 ? selectForward : null,
        ),
      ],
    );
  }
}
