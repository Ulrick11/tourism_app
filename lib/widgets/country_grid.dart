import 'package:auto_animated/auto_animated.dart';
import 'package:countrys_app/models/country_model.dart';
import 'package:countrys_app/presentation/country_details_screen.dart';
import 'package:countrys_app/widgets/text_utlis.dart';
import 'package:flutter/material.dart';

class CountryGridWidget extends StatelessWidget {
  final List<CountryModel> dataList;
  const CountryGridWidget({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return LiveGrid.options(
      padding: const EdgeInsets.all(20),
      options: options,

      // Like GridView.builder, but also includes animation property
      itemBuilder: buildAnimatedItem,

      // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
      itemCount: dataList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
    );
  }

  Widget buildAnimatedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) =>
      // For example wrap with fade transition
      FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        // And slide transition
        child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            // Paste you Widget
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        CountryDetailsScreen(country: dataList[index])));
              },
              child: Hero(
                tag: "${dataList[index].flags?.png.toString()}",
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xff205053),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 5)
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage(dataList[index].flags?.png ?? "")),
                        const SizedBox(
                          height: 5,
                        ),
                        TextUtil(
                          text: dataList[index].name?.common ?? "NA",
                          size: 14,
                          weight: true,
                          color: const Color.fromARGB(255, 195, 221, 222),
                        )
                      ]),
                ),
              ),
            )),
      );
}

const options = LiveOptions(
  // Start animation after (default zero)
  delay: Duration(milliseconds: 50),

  // Show each item through (default 250)
  showItemInterval: Duration(milliseconds: 50),

  // Animation duration (default 250)
  showItemDuration: Duration(milliseconds: 200),

  // Animations starts at 0.05 visible
  // item fraction in sight (default 0.025)
  visibleFraction: 0.05,

  // Repeat the animation of the appearance
  // when scrolling in the opposite direction (default false)
  // To get the effect as in a showcase for ListView, set true
  reAnimateOnVisibility: false,
);
// Build animated item (helper for all examples)

