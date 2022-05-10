import 'package:flutter/material.dart';

class FlatPercentOff extends StatefulWidget {
  const FlatPercentOff({Key? key}) : super(key: key);

  @override
  State<FlatPercentOff> createState() => _FlatPercentOffState();
}

class FlatPercentOffModel {
  String imageUri;
  String name;
  String sellType;
  int quantity;
  String weightType;
  double price;
  double discountPrice;
  int discountPercent;
  double rating;
  double noOfRatings;

  FlatPercentOffModel(
      this.imageUri,
      this.name,
      this.sellType,
      this.quantity,
      this.weightType,
      this.price,
      this.discountPrice,
      this.discountPercent,
      this.rating,
      this.noOfRatings);
}

class _FlatPercentOffState extends State<FlatPercentOff> {
  List<FlatPercentOffModel> flatPercentOffData = [
    FlatPercentOffModel(
        'assets/images/flatoff.png',
        "Fresho-Chicken-Curry Cut Without Skin",
        "g",
        500,
        "g",
        150,
        99,
        51,
        3.3,
        36224),
    FlatPercentOffModel(
        'assets/images/flatoff.png',
        "Fresho-Chicken-Curry Cut Without Skin",
        "g",
        500,
        "g",
        150,
        99,
        51,
        3.3,
        36224),
    FlatPercentOffModel(
        'assets/images/flatoff.png',
        "Fresho-Chicken-Curry Cut Without Skin",
        "g",
        500,
        "g",
        150,
        99,
        51,
        3.3,
        36224),
    FlatPercentOffModel(
        'assets/images/flatoff.png',
        "Fresho-Chicken-Curry Cut Without Skin",
        "g",
        500,
        "g",
        150,
        99,
        51,
        3.3,
        36224),
    FlatPercentOffModel(
        'assets/images/flatoff.png',
        "Fresho-Chicken-Curry Cut Without Skin",
        "g",
        500,
        "g",
        150,
        99,
        51,
        3.3,
        36224),
    FlatPercentOffModel(
        'assets/images/flatoff.png',
        "Fresho-Chicken-Curry Cut Without Skin",
        "g",
        500,
        "g",
        150,
        99,
        51,
        3.3,
        36224),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 430,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffFFA800), Color(0xffFF1100)],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.15,
              color: Colors.white,
              child: Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Flat\n',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
                  TextSpan(
                    text: '50%',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFF1100)),
                  ),
                  TextSpan(
                      text: ' Off',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
                ])),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: flatPercentOffData.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return flatPercentOffCard(flatPercentOffData[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget flatPercentOffCard(FlatPercentOffModel flatPercentOffModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      flatPercentOffModel.imageUri,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff417AC1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Text(
                          flatPercentOffModel.discountPercent.toString() +
                              "% OFF",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                flatPercentOffModel.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff417AC1).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: Row(
                        children: [
                          Text(flatPercentOffModel.rating.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 12,
                                      color: const Color(0xff417AC1)
                                      // fontWeight: FontWeight.w700,
                                      )),
                          const Icon(
                            Icons.star,
                            color: Color(0xff417AC1),
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                      flatPercentOffModel.noOfRatings.toInt().toString() +
                          ' Ratings',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 10, color: const Color(0xff777777)
                              // fontWeight: FontWeight.w700,
                              ))
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    color: const Color(0xffD2D2D2).withOpacity(0.69),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      flatPercentOffModel.quantity.toString() +
                          " " +
                          flatPercentOffModel.weightType,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 10, color: const Color(0xff777777)
                              // fontWeight: FontWeight.w700,
                              )),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    '\$' + flatPercentOffModel.discountPrice.toInt().toString(),
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '\$' + flatPercentOffModel.price.toInt().toString(),
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 12,
                          color: const Color(0xffA9A9A9),
                          decoration: TextDecoration.lineThrough,
                          // fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff417AC1).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: const Color(0xff417AC1))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Har Din Sasta!',
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      fontSize: 12,
                                      color: const Color(0xff417AC1),
                                    )),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff417AC1),
                      )
                    ],
                  )),
              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFFA800),
                      fixedSize: const Size(160, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('ADD',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
