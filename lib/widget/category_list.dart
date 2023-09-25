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

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategoryIndex = 0;

  final List<Category> categories = [
    Category(
      name: "Category 1",
      details: "Category 1fkasas Details",
      color: Colors.red,
      icon: "assets/icons/fluent-mdl2_world.png",
      screen: Container(
        child: Center(
          child: Text("Content for Category 12"),
        ),
      ),
    ),
    Category(
      name: "Category 1",
      details: "Category 1 Details",
      color: Colors.red,
      icon: "icon1",
      screen: Container(
        child: Center(
          child: Text("Content for Category 13"),
        ),
      ),
    ),
    Category(
      name: "Category 1",
      details: "Category 1 Details",
      color: Colors.red,
      icon: "icon1",
      screen: Container(
        child: Center(
          child: Text("Content for Category 14"),
        ),
      ),
    ),
    Category(
      name: "Category 2",
      details: "Category 2 Details",
      color: Colors.blue,
      icon: "icon2",
      screen: Container(
        child: Center(
          child: Text("Content for Category 25"),
        ),
      ),
    ),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _tabSection(context, categories, selectedCategoryIndex),
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context, List<Category> categories,
      int selectedCategoryIndex) {
    double containerSize = 20.0; // Initial size of the circular container

    return DefaultTabController(
      length: categories.length,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories.asMap().entries.map((entry) {
              final index = entry.key;
              final category = entry.value;
              final isSelected = index == selectedCategoryIndex;
              final iconSize = isSelected ? 30.0 : 20.0;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategoryIndex = index;
                    containerSize =
                        isSelected ? 30.0 : 20.0; // Update container size
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  // Animation duration
                  curve: Curves.easeInOut,
                  // Animation curve
                  width: iconSize,
                  height: iconSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? category.color : Colors.transparent,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.category,
                      color: isSelected ? Colors.white : category.color,
                      size: iconSize,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
                if (selectedCategoryIndex >= 0 &&
                    selectedCategoryIndex < categories.length)
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            categories[selectedCategoryIndex].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(categories[selectedCategoryIndex].details),
                        ],
                      ),
                    ),
                  ),
                Expanded(
                  child: TabBarView(
                    children:
                        categories.map((category) => category.screen).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
