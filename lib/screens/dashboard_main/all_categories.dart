import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class AllCategoriesModel {
  String imageUri;
  String categoryName;

  AllCategoriesModel(this.imageUri, this.categoryName);
}

class _AllCategoriesState extends State<AllCategories> {
  List<AllCategoriesModel> categoriesData = [
    AllCategoriesModel('assets/images/categories/offer.png', 'Offer Zone'),
    AllCategoriesModel('assets/images/categories/grocery.png', 'Grocery'),
    AllCategoriesModel('assets/images/categories/chicken.png', 'Chicken'),
    AllCategoriesModel('assets/images/categories/vegetable.png', 'Vegetable'),
    AllCategoriesModel('assets/images/categories/fruit.png', 'Fruits'),
    AllCategoriesModel('assets/images/categories/beverages.png', 'Beverages')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Card(
        elevation: 7,
        child: Row(
          children: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFA800),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'All Categories',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 12,
                          ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categoriesData.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          categoriesData[index].imageUri,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          categoriesData[index].categoryName,
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 12,
                                  ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
