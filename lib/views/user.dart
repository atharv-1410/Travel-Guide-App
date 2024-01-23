import 'package:flutter/material.dart';
import 'package:travelguide/data/data.dart';
import 'package:travelguide/model/popular_tours_model.dart';
import 'package:travelguide/views/home.dart';

class SearchBarScreen extends StatefulWidget {
  // const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  List<PopularTourModel> popularTourModels = new List();
  // This list holds the data for the list view
  List<PopularTourModel> _foundUsers = [];
  @override
  void initState() {
    // at the beginning, all users are shown
    popularTourModels = getPopularTours();
    _foundUsers = popularTourModels;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<PopularTourModel> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = popularTourModels;
    } else {
      results = popularTourModels
          .where((user) =>
              user.label.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(7),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text('User List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) {
                        return PopularTours(
                          my_label: _foundUsers[index].label,
                          my_name: _foundUsers[index].name,
                          my_loc: _foundUsers[index].loc,
                          my_rating: _foundUsers[index].rating,
                          my_views: _foundUsers[index].views,
                          my_weather: _foundUsers[index].weather,
                          my_distance: _foundUsers[index].distance,
                          my_likes: _foundUsers[index].likes,
                          my_booking: _foundUsers[index].booking,
                          my_resturant: _foundUsers[index].resturant,
                          my_description: _foundUsers[index].description,
                          my_murl: _foundUsers[index].murl,
                          my_turl: _foundUsers[index].turl,
                          my_rurl: _foundUsers[index].rurl,
                          my_img0: _foundUsers[index].img0,
                          my_img1: _foundUsers[index].img1,
                          my_img2: _foundUsers[index].img2,
                          my_img3: _foundUsers[index].img3,
                          my_img4: _foundUsers[index].img4,
                        );
                      })
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
