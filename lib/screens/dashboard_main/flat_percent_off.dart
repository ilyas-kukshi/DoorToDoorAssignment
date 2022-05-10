import 'package:flutter/material.dart';

class FlatPercentOff extends StatefulWidget {
  const FlatPercentOff({Key? key}) : super(key: key);

  @override
  State<FlatPercentOff> createState() => _FlatPercentOffState();
}

class FlatPercentOffModel{
  //   String categoryType;
  // String imageUri;
  // String name;
  // String sellType;
  // int quantity;
  // String weightType;
  // double price;
  // double discountPrice;
  // int discountPercent;
}

class _FlatPercentOffState extends State<FlatPercentOff> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffFFA800), Color(0xffFF1100)],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 200,
            width: 80,
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
          Expanded(child: ListView.builder(itemBuilder: (context, index){
            return Container();
          }))
        ],
      ),
    );
  }
}
