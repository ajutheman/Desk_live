import 'package:flutter/material.dart';

class Category {
  final String name;
  final String details;
  final Color color;

  Category(this.name, this.details, this.color);
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategoryIndex = -1;

  // Define your list of categories here
  final List<Category> categories = [
    Category("Category 1", "Category 1 Details", Colors.red),
    Category("Category 2", "Category 2 Details", Colors.blue),
    Category("Category 3", "Category 1 Details", Colors.red),
    Category("Category 4", "Category 2 Details", Colors.blue),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Add a title or label for the category list
        Text(
          'Categories',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 10),
        // List of categories using a ListView.builder
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: Colors.grey[200],
            child: Center(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final isSelected = index == selectedCategoryIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = isSelected ? -1 : index;
                      });
                    },
                    child: Container(
                      width: 90,
                      height: 90,
                      //color: isSelected ? Colors.yellow : Colors.transparent,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 47,
                                width: 47,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: isSelected
                                        ? Colors.yellow
                                        : Colors.transparent,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.circle,
                                    size: 30,
                                    color: isSelected
                                        ? Colors.grey[200]
                                        : category.color,
                                  ),
                                ),
                              ),
                              SizedBox(width: 60),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 21);
                },
              ),
            ),
          ),
        ),
        selectedCategoryIndex != -1
            ? Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 0.1,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                20.0), // Adjust the radius as needed
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                          categories[selectedCategoryIndex].details,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 0.1,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                20.0), // Adjust the radius as needed
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                          categories[selectedCategoryIndex].details,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 0.1,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                20.0), // Adjust the radius as needed
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                          categories[selectedCategoryIndex].details,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 0.1,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                20.0), // Adjust the radius as needed
                          ),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                          categories[selectedCategoryIndex].details,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
