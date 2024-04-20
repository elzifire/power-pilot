import 'package:flutter/material.dart';
import 'package:museum_polri/muri_app/view/component/category_card.dart';

class CariBarangCategoryScreen extends StatelessWidget {
  const CariBarangCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: AppBar(
                automaticallyImplyLeading: true,
                title: const Text(
                  "Cari Barang",
                  style: TextStyle(
                      color: Color(0xFF34312F),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 30, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Silahkan",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF34312F)),
                  ),
                  const Text(
                    "Pilih Kategori",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF34312F)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    runSpacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              name: "Senjata",
                              asset: "images/senjata.png",
                              isLeft: true,
                              onClick: () {}),
                          CategoryCard(
                              name: "Cyber",
                              asset: "images/cyber.png",
                              isLeft: false,
                              onClick: () {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              name: "Teroris",
                              asset: "images/teroris.png",
                              isLeft: true,
                              onClick: () {}),
                          CategoryCard(
                              name: "Sejarah",
                              asset: "images/sejarah.png",
                              isLeft: false,
                              onClick: () {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCard(
                              name: "Peristiwa",
                              asset: "images/peristiwa.png",
                              isLeft: true,
                              onClick: () {}),
                          CategoryCard(
                              name: "Atribut",
                              asset: "images/atribut.png",
                              isLeft: false,
                              onClick: () {}),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _quiz(BuildContext context, String name, String asset,
      void Function() onClick) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: const Duration(milliseconds: 2000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onClick,
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 40,
              height: 170,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF2B3F6C).withOpacity(0.8),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(asset),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F)),
            ),
          )
        ],
      ),
    );
  }
}
