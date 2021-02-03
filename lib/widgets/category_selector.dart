import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  int _selectedIndex = 0;
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {
    final List<String> _categories = [
      'Messages',
      'Online',
      'Groups',
      'Requests',
    ];

    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget._selectedIndex = index;
                });
              },
              child: Text(
                _categories[index],
                style: TextStyle(
                  color: index == widget._selectedIndex
                      ? Colors.white
                      : Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
