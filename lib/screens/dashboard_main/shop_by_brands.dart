import 'package:flutter/material.dart';

class ShopByBrands extends StatefulWidget {
  const ShopByBrands({Key? key}) : super(key: key);

  @override
  State<ShopByBrands> createState() => _ShopByBrandsState();
}

class _ShopByBrandsState extends State<ShopByBrands> {
  List<String> shopByBrandsData = [
    'assets/images/shopbybrands/aashirvaad.png',
    'assets/images/shopbybrands/amul.png',
    'assets/images/shopbybrands/indiagate.png',
    'assets/images/shopbybrands/mamaearth.png',
    'assets/images/shopbybrands/lorea.png',
    'assets/images/shopbybrands/patanjali.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff417AC1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'SHOP BY BRANDS',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: shopByBrandsData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisExtent: 100),
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: Color(0xff777777), width: 0.5),
                      right: BorderSide(color: Color(0xff777777), width: 0.5),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    shopByBrandsData[index],
                    fit: BoxFit.contain,
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
