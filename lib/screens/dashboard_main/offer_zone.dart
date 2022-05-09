import 'package:flutter/material.dart';

class OfferZone extends StatefulWidget {
  const OfferZone({Key? key}) : super(key: key);

  @override
  State<OfferZone> createState() => _OfferZoneState();
}

class OfferZoneModel {
  String imageUri;
  String categoryName;
  int discount;

  OfferZoneModel(this.imageUri, this.categoryName, this.discount);
}

class _OfferZoneState extends State<OfferZone> {
  List<OfferZoneModel> offerZoneData = [
    OfferZoneModel(
        'assets/images/offerzone/mensjacket.png', "Men's Jacket", 70),
    OfferZoneModel(
        'assets/images/offerzone/topdealso.png', "Top Deals on Oils", 70),
    OfferZoneModel(
        'assets/images/offerzone/meatandegg.png', "Meat and Eggs", 70),
    OfferZoneModel(
        "assets/images/offerzone/kitchen's.png", "Kitchen Appliances", 70),
    OfferZoneModel(
        "assets/images/offerzone/cleaning.png", "Cleaning Appliances", 70),
    OfferZoneModel("assets/images/offerzone/beautyandcosmetics.png",
        "Beauty and Cosmetics", 70),
    OfferZoneModel("assets/images/offerzone/snacks.png", "Snacks", 70),
    OfferZoneModel("assets/images/offerzone/milk.png", "Milk", 70),
    OfferZoneModel("assets/images/offerzone/drinks.png", "Drinks", 70),
    OfferZoneModel("assets/images/offerzone/coffie.png", "Coffie", 70),
    OfferZoneModel("assets/images/offerzone/babycare.png", "Baby Care", 70),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: const BoxDecoration(color: Color(0xffFFA800)),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'OfferZone',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 750,
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: offerZoneData.length + 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 180,
              ),
              itemBuilder: (context, index) {
                return offerZoneData.length == index
                    ? Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "All Offers",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: const Color(0xffFFA800),
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(height: 8),
                                Image.asset(
                                  offerZoneData[index].imageUri,
                                  height: 70,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  offerZoneData[index].categoryName,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Min " +
                                      offerZoneData[index].discount.toString() +
                                      "% Off",
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        color: const Color(0xff417AC1),
                                        fontSize: 12,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
          ),
        )
      ],
    );
  }
}
