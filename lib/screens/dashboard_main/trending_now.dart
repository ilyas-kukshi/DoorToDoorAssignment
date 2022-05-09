import 'package:flutter/material.dart';

class TrendingNow extends StatefulWidget {
  const TrendingNow({Key? key}) : super(key: key);

  @override
  State<TrendingNow> createState() => _TrendingNowState();
}

class TrendingNowModel {
  String imagrUri;
  String name;
  int discount;

  TrendingNowModel(this.imagrUri, this.name, this.discount);
}

class _TrendingNowState extends State<TrendingNow> {
  List<TrendingNowModel> trendingNowData = [
    TrendingNowModel('assets/images/trendingnow.png', 'Winter Health Care', 30),
    TrendingNowModel('assets/images/trendingnow.png', 'Winter Health Care', 30),
    TrendingNowModel('assets/images/trendingnow.png', 'Winter Health Care', 30),
    TrendingNowModel('assets/images/trendingnow.png', 'Winter Health Care', 30),
    TrendingNowModel('assets/images/trendingnow.png', 'Winter Health Care', 30),
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
                'TRENDING NOW',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: trendingNowData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 150,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 130,
                            color: const Color(0xffD9E6F5),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                trendingNowData[index].imagrUri,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            trendingNowData[index].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            width: 130,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFA800),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UPTO " +
                                    trendingNowData[index].discount.toString() +
                                    "% OFF",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
