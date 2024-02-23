import 'package:countrys_app/models/country_model.dart';
import 'package:countrys_app/utils/convertKMB.dart';
import 'package:countrys_app/widgets/custom_clip.dart';
import 'package:countrys_app/widgets/text_utlis.dart';
import 'package:flutter/material.dart';

class CountryDetailsScreen extends StatelessWidget {
  final CountryModel country;
  const CountryDetailsScreen({super.key,  required this.country})
      ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 221, 222),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: ClipPath(
          clipper: CustomClipPath(),
          child: AppBar(
            foregroundColor: const Color.fromARGB(255, 195, 221, 222),
            backgroundColor: const Color(0xff205053),
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Hero(
                tag: "${country.flags?.png.toString()}",
                child: Image.network(
                  country.flags?.png ?? "",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          TextUtil(
            text: country.name?.common ?? "NA",
            size: 22,
            weight: true,
            color: const Color(0xff205053),
          ),
          TextUtil(
            text: country.name?.official ?? "NA",
            color: const Color(0xff205053),
          ),
          buildRow(title: "Capital", value: country.capital?[0] ?? "NA"),
          buildRow(title: "Country Code", value: country.cca2 ?? "NA"),
          buildRow(
              title: "Independent", value: country.independent! ? "Yes" : "No"),
          buildRow(title: "Region", value: country.region ?? "NA"),
          buildRow(
              title: "Area",
              value: "${convertToKMB(country.area?.round() ?? 0)} KM"),
          buildRow(
              title: "Population",
              value: "${convertToKMB(country.population?.round() ?? 0)} "),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextUtil(
                  text: "View on Maps : ",
                  color: Color(0xff205053),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff205053),
                  ),
                  child: const Icon(
                    Icons.near_me,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  buildRow({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextUtil(
            text: "$title : ",
            color: const Color(0xff205053),
          ),
          TextUtil(
            text: value,
            weight: true,
            color: const Color(0xff205053),
          ),
        ],
      ),
    );
  }
}
