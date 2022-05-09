import 'package:flutter/material.dart';

class RecommendationForYou extends StatefulWidget {
  const RecommendationForYou({Key? key}) : super(key: key);

  @override
  State<RecommendationForYou> createState() => _RecommendationForYouState();
}

class RecommendationForYouModel {
  String categoryType;
  String imageUri;
  String name;
  String sellType;
  int quantity;
  int approxMinWeight;
  String weightType;
  double price;
  double discountPrice;
  int discountPercent;

  RecommendationForYouModel(
      this.categoryType,
      this.imageUri,
      this.name,
      this.sellType,
      this.quantity,
      this.approxMinWeight,
      this.weightType,
      this.price,
      this.discountPrice,
      this.discountPercent);
}

class _RecommendationForYouState extends State<RecommendationForYou> {
  List<RecommendationForYouModel> recommendationsForYouData = [
    RecommendationForYouModel('FRESH', 'assets/images/recommendedforyou.png',
        "Apple", "pc", 3, 250, 'g', 2, 2.19, 54),
    RecommendationForYouModel('FRESH', 'assets/images/recommendedforyou.png',
        "Apple", "pc", 3, 250, 'g', 2, 2.19, 54),
    RecommendationForYouModel('FRESH', 'assets/images/recommendedforyou.png',
        "Apple", "pc", 3, 250, 'g', 2, 2.19, 0),
    RecommendationForYouModel('FRESH', 'assets/images/recommendedforyou.png',
        "Apple", "pc", 3, 250, 'g', 2, 2.19, 0),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff417AC1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'RECOMMENDATIONS FOR YOU',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 400,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: recommendationsForYouData.length,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xff777777), width: 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 140,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Card(
                                elevation: 4,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.asset(
                                        recommendationsForYouData[index]
                                            .imageUri,
                                        height: 120,
                                      ),
                                    ),
                                    recommendationsForYouData[index]
                                                .discountPercent !=
                                            0
                                        ? Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  bottomRight:
                                                      Radius.circular(4)),
                                              color: Color(0xff417AC1),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Text(
                                                recommendationsForYouData[index]
                                                        .discountPercent
                                                        .toString() +
                                                    " OFF",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10,
                                                        color: Colors.white),
                                              ),
                                            ),
                                          )
                                        : const Offstage(),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    recommendationsForYouData[index]
                                        .categoryType,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 10,
                                            color: const Color(0xff777777)),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    recommendationsForYouData[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xffD8D8D8),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        recommendationsForYouData[index]
                                                .quantity
                                                .toString() +
                                            " " +
                                            recommendationsForYouData[index]
                                                .sellType +
                                            " - (approx." +
                                            recommendationsForYouData[index]
                                                .approxMinWeight
                                                .toString() +
                                            " " +
                                            recommendationsForYouData[index]
                                                .weightType +
                                            " to "
                                                "${recommendationsForYouData[index].approxMinWeight + 100}" +
                                            " " +
                                            recommendationsForYouData[index]
                                                .weightType +
                                            ")",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                                fontSize: 10,
                                                color: const Color(0xff777777)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Text(
                                        "\$ " +
                                            recommendationsForYouData[index]
                                                .discountPrice
                                                .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        recommendationsForYouData[index]
                                            .price
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                              fontSize: 14,
                                              color: const Color(0xff777777),
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              )
                            ],
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffFFA800)),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('ADD',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            )),
                                  )))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'View more >',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      color: const Color(0xffFF1100),
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
