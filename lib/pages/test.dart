import 'package:flutter/material.dart';

class Category {
  final String icon;
  final String name;
  final String details;
  final Color color;
  final Widget screen;

  Category({
    required this.name,
    required this.details,
    required this.color,
    required this.screen,
    required this.icon,
  });
}

List<Category> categories = [
  Category(
    name: 'Category 1',
    details: 'Details for Category 1',
    color: Colors.red,
    screen: CategoryScreen('Category 1'),
    icon: 'icon1.png',
  ),
  Category(
    name: 'Category 2',
    details: 'Details for Category 2',
    color: Colors.blue,
    screen: CategoryScreen('Category 2'),
    icon: 'icon2.png',
  ),
  Category(
    name: 'Category 3',
    details: 'Details for Category 3',
    color: Colors.green,
    screen: CategoryScreen('Category 3'),
    icon: 'icon3.png',
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Category? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Selector'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: categories.map((category) {
              return CategoryCircle(
                category: category,
                isSelected: selectedCategory == category,
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          if (selectedCategory != null) selectedCategory!.screen,
        ],
      ),
    );
  }
}

class CategoryCircle extends StatelessWidget {
  final Category category;
  final bool isSelected;
  final VoidCallback onTap;

  CategoryCircle(
      {required this.category, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100, // Adjust size as needed
        height: 100, // Adjust size as needed
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? Colors.blue
              : Colors.grey, // Highlight selected category
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              category.icon,
              width: 40, // Adjust size as needed
              height: 40, // Adjust size as needed
            ),
            Text(
              category.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final String categoryName;

  CategoryScreen(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Details for $categoryName',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
