import 'package:countrys_app/providers/countyr_provider.dart';
import 'package:countrys_app/widgets/country_grid.dart';
import 'package:countrys_app/widgets/custom_clip.dart';
import 'package:flutter/material.dart';
import '../models/country_model.dart';
import '../widgets/global_shimmer.dart';
import '../widgets/error_card.dart';
import '../widgets/text_utlis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 221, 222),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: ClipPath(
          clipper: CustomClipPath(),
          child: AppBar(
            backgroundColor: const Color(0xff205053),
            leading: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 195, 221, 222),
            ),
            title: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {}); // Trigger rebuild on text change
              },
              decoration: const InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color.fromARGB(145, 158, 158, 158),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search,
                    color: Color.fromARGB(255, 195, 221, 222)),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications,
                    color: Color.fromARGB(255, 195, 221, 222)),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      body: FutureBuilder<dynamic>(
        future: CountryProvider().getCountryList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return GlobalShimmerWidget(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(
                  20,
                  (index) => Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xff205053),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError || snapshot.data == null) {
            return const Center(
              child: SizedBox(
                width: 350,
                height: 200,
                child: ErrorCard(),
              ),
            );
          } else {
            List<CountryModel> dataList = snapshot.data!;
            debugPrint("data===$dataList");

            // Filter data based on search query
            List<CountryModel> filteredData = dataList.where((country) {
              String name = country.name?.common?.toLowerCase() ?? "";
              String query = _searchController.text.toLowerCase();
              return name.contains(query);
            }).toList();

            return filteredData.isEmpty
                ? Center(
                    child: TextUtil(
                      text: "No Data Found",
                      weight: true,
                      size: 22,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                : CountryGridWidget(dataList: filteredData);
          }
        },
      ),
    );
  }
}
