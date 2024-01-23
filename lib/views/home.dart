// import 'package:cached_network_image/cached_network_image.dart';
import 'package:travelguide/data/data.dart';
import 'package:travelguide/model/country_model.dart';
import 'package:travelguide/model/popular_tours_model.dart';
import 'package:travelguide/views/details.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:travelguide/views/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PopularTourModel> popularTourModels = new List();
  List<TopModel> topModels = new List();

  @override
  void initState() {
    topModels = getTopModels();
    popularTourModels = getPopularTours();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(7),
          child: GestureDetector(
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onTap: () {
              // MaterialPageRoute(builder: (context) => SearchBarScreen());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SearchBarScreen()));
            },
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/mylogo.png",
              height: 30,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Travel Guide",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            // child: Icon(
            //   Icons.more_vert,
            //   color: Colors.white,
            // ),
            child: GestureDetector(
              child: Icon(
                Icons.open_in_new,
                color: Colors.white,
              ),
              onTap: () {
                launch("https://www.google.co.in/maps");
              },
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find the best tour",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Recommendations",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 240,
                child: ListView.builder(
                    itemCount: topModels.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CountryListTile(
                        my_label: topModels[index].label,
                        my_name: topModels[index].name,
                        my_loc: topModels[index].loc,
                        my_rating: topModels[index].rating,
                        my_views: topModels[index].views,
                        my_weather: topModels[index].weather,
                        my_distance: topModels[index].distance,
                        my_likes: topModels[index].likes,
                        my_booking: topModels[index].booking,
                        my_resturant: topModels[index].resturant,
                        my_description: topModels[index].description,
                        my_murl: topModels[index].murl,
                        my_turl: topModels[index].turl,
                        my_rurl: topModels[index].rurl,
                        my_img0: topModels[index].img0,
                        my_img1: topModels[index].img1,
                        my_img2: topModels[index].img2,
                        my_img3: topModels[index].img3,
                        my_img4: topModels[index].img4,
                      );
                    }),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Popular Tours",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: popularTourModels.length,
                  itemBuilder: (context, index) {
                    return PopularTours(
                      my_label: popularTourModels[index].label,
                      my_name: popularTourModels[index].name,
                      my_loc: popularTourModels[index].loc,
                      my_rating: popularTourModels[index].rating,
                      my_views: popularTourModels[index].views,
                      my_weather: popularTourModels[index].weather,
                      my_distance: popularTourModels[index].distance,
                      my_likes: popularTourModels[index].likes,
                      my_booking: popularTourModels[index].booking,
                      my_resturant: popularTourModels[index].resturant,
                      my_description: popularTourModels[index].description,
                      my_murl: popularTourModels[index].murl,
                      my_turl: popularTourModels[index].turl,
                      my_rurl: popularTourModels[index].rurl,
                      my_img0: popularTourModels[index].img0,
                      my_img1: popularTourModels[index].img1,
                      my_img2: popularTourModels[index].img2,
                      my_img3: popularTourModels[index].img3,
                      my_img4: popularTourModels[index].img4,
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class PopularTours extends StatelessWidget {
  final String my_label;
  final String my_name;
  final String my_loc;
  final String my_rating;
  final String my_views;
  final String my_weather;
  final String my_distance;
  final String my_likes;
  final String my_booking;
  final String my_resturant;
  final String my_description;
  final String my_murl;
  final String my_turl;
  final String my_rurl;
  final String my_img0;
  final String my_img1;
  final String my_img2;
  final String my_img3;
  final String my_img4;

  PopularTours(
      {@required this.my_label,
      @required this.my_name,
      @required this.my_loc,
      @required this.my_rating,
      @required this.my_views,
      @required this.my_weather,
      @required this.my_distance,
      @required this.my_likes,
      @required this.my_booking,
      @required this.my_resturant,
      @required this.my_description,
      @required this.my_murl,
      @required this.my_turl,
      @required this.my_rurl,
      @required this.my_img0,
      @required this.my_img1,
      @required this.my_img2,
      @required this.my_img3,
      @required this.my_img4});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      label: my_label,
                      name: my_name,
                      loc: my_loc,
                      rating: my_rating,
                      views: my_views,
                      weather: my_weather,
                      distance: my_distance,
                      likes: my_likes,
                      booking: my_booking,
                      resturant: my_resturant,
                      description: my_description,
                      murl: my_murl,
                      turl: my_turl,
                      rurl: my_rurl,
                      img0: my_img0,
                      img1: my_img1,
                      img2: my_img2,
                      img3: my_img3,
                      img4: my_img4,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.asset(
                my_img0,
                width: 110,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    my_name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4E6059)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    my_loc,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff89A097)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    my_label,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4E6059)),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 10, right: 8),
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff139157)),
                child: Column(
                  children: [
                    Text(
                      "$my_rating",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  final String my_label;
  final String my_name;
  final String my_loc;
  final String my_rating;
  final String my_views;
  final String my_weather;
  final String my_distance;
  final String my_likes;
  final String my_booking;
  final String my_resturant;
  final String my_description;
  final String my_murl;
  final String my_turl;
  final String my_rurl;
  final String my_img0;
  final String my_img1;
  final String my_img2;
  final String my_img3;
  final String my_img4;

  CountryListTile(
      {@required this.my_label,
      @required this.my_name,
      @required this.my_loc,
      @required this.my_rating,
      @required this.my_views,
      @required this.my_weather,
      @required this.my_distance,
      @required this.my_likes,
      @required this.my_booking,
      @required this.my_resturant,
      @required this.my_description,
      @required this.my_murl,
      @required this.my_turl,
      @required this.my_rurl,
      @required this.my_img0,
      @required this.my_img1,
      @required this.my_img2,
      @required this.my_img3,
      @required this.my_img4});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      label: my_label,
                      name: my_name,
                      loc: my_loc,
                      rating: my_rating,
                      views: my_views,
                      weather: my_weather,
                      distance: my_distance,
                      likes: my_likes,
                      booking: my_booking,
                      resturant: my_resturant,
                      description: my_description,
                      murl: my_murl,
                      turl: my_turl,
                      rurl: my_turl,
                      img0: my_img0,
                      img1: my_img1,
                      img2: my_img2,
                      img3: my_img3,
                      img4: my_img4,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                my_img0,
                height: 220,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200,
              width: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 8, top: 8),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white38),
                          child: Text(
                            my_label ?? "Zoo",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                my_name ?? "India",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              my_loc ?? "Pune",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                          margin: EdgeInsets.only(bottom: 10, right: 8),
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white38),
                          child: Column(
                            children: [
                              Text(
                                my_rating ?? "4.5",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
