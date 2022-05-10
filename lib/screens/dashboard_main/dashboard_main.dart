import 'package:badges/badges.dart';
import 'package:door_to_door/screens/dashboard_main/all_categories.dart';
import 'package:door_to_door/screens/dashboard_main/carousel.dart';
import 'package:door_to_door/screens/dashboard_main/flat_percent_off.dart';
import 'package:door_to_door/screens/dashboard_main/offer_zone.dart';
import 'package:door_to_door/screens/dashboard_main/recommendation_for_you.dart';
import 'package:door_to_door/screens/dashboard_main/shop_by_brands.dart';
import 'package:door_to_door/screens/dashboard_main/trending_now.dart';
import 'package:flutter/material.dart';

class DashBoardMain extends StatefulWidget {
  const DashBoardMain({Key? key}) : super(key: key);

  @override
  State<DashBoardMain> createState() => _DashBoardMainState();
}

class _DashBoardMainState extends State<DashBoardMain> {
  List<String> carousel1 = [
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
    'assets/images/carousel1.png'
  ];

  List<String> carousel2 = [
    'assets/images/carousel2.png',
    'assets/images/carousel2.png',
    'assets/images/carousel2.png',
    'assets/images/carousel2.png',
    'assets/images/carousel2.png',
  ];
  List<String> carousel3 = [
    'assets/images/carousel3a.png',
    'assets/images/carousel3a.png',
    'assets/images/carousel3a.png',
    'assets/images/carousel3a.png',
    'assets/images/carousel3a.png',
  ];

  List<String> carousel4 = [
    'assets/images/carousel3b.png',
    'assets/images/carousel3b.png',
    'assets/images/carousel3b.png',
    'assets/images/carousel3b.png',
    'assets/images/carousel3b.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color(0xff52C9EA).withOpacity(0.6),
          leading: GestureDetector(
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            Badge(
              child: GestureDetector(
                  child: const Icon(Icons.shopping_bag_outlined,
                      color: Colors.white)),
            ),
            GestureDetector(
              child: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            )
          ],
          title: Image.asset('assets/images/logo.png'),
          expandedHeight: 120,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(top: 100, left: 12, right: 12),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 10, color: const Color(0xff777777)),
                    prefix: Container(
                        color: const Color(0xffA5CDFF),
                        child:
                            const Icon(Icons.search, color: Color(0xff777777))),
                    suffixIcon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Color(0xff417AC1),
                    )),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AllCategories(),
              const SizedBox(height: 16),
              Carousel(
                imageData: carousel1,
                viewportFraction: 0.8,
                showDotIndicator: true,
              ),
              const SizedBox(height: 16),
              const OfferZone(),
              Carousel(
                  imageData: carousel2,
                  viewportFraction: 1.0,
                  showDotIndicator: true),
              const SizedBox(height: 16),
              const FlatPercentOff(),
              const SizedBox(height: 16),
              Carousel(
                  imageData: carousel3,
                  viewportFraction: 1.0,
                  showDotIndicator: true),
              const SizedBox(height: 16),
              Carousel(
                  imageData: carousel4,
                  viewportFraction: 1.0,
                  showDotIndicator: true),
              const SizedBox(height: 16),
              const TrendingNow(),
              const SizedBox(height: 16),
              const ShopByBrands(),
              const SizedBox(height: 16),
              const RecommendationForYou(),
            ],
          ),
        )
      ],
    ));
  }
}
