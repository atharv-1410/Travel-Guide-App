import 'package:cached_network_image/cached_network_image.dart';
import 'package:travelguide/data/data.dart';
import 'package:travelguide/model/country_model.dart';
import 'package:flutter/material.dart';
import 'package:travelguide/data/data.dart';
import 'package:travelguide/model/country_model.dart';
import 'package:travelguide/model/popular_tours_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatefulWidget {
  final String name;
  final String loc;
  final String rating;
  final String label;
  final String views;
  final String weather;
  final String distance;
  final String likes;
  final String booking;
  final String resturant;
  final String description;
  final String murl;
  final String turl;
  final String rurl;
  final String img0;
  final String img1;
  final String img2;
  final String img3;
  final String img4;

  Details({
    @required this.name,
    @required this.loc,
    @required this.rating,
    @required this.label,
    @required this.views,
    @required this.weather,
    @required this.distance,
    @required this.likes,
    @required this.booking,
    @required this.resturant,
    @required this.description,
    @required this.murl,
    @required this.turl,
    @required this.rurl,
    @required this.img0,
    @required this.img1,
    @required this.img2,
    @required this.img3,
    @required this.img4,
  });

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // List<TopModel> topModels = new List();

  // @override
  // void initState() {
  //   topModels = getTopModels();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var arr = [widget.img1, widget.img2, widget.img3, widget.img4];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    widget.img0,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 350,
                    color: Colors.black12,
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
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
                              Spacer(),
                              GestureDetector(
                                child: Icon(
                                  Icons.open_in_new,
                                  color: Colors.white,
                                ),
                                onTap: () {
                                  launch(widget.murl);
                                },
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Image.asset(
                                "assets/heart.png",
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    widget.loc,
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // RatingBar(widget.rating.round()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "${widget.rating}" + "/5",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeaturesTile(
                    icon: Icon(Icons.camera_alt, color: Color(0xff5A6C64)),
                    label: widget.views,
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.wb_cloudy, color: Color(0xff5A6C64)),
                    label: widget.weather,
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.directions_car, color: Color(0xff5A6C64)),
                    label: widget.distance,
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.favorite_border, color: Color(0xff5A6C64)),
                    label: widget.likes,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          color: Color(0xffE9F4F9),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color(0xffD5E6F2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  "assets/transport.png",
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Modes of",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5A6C64)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Transportation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5A6C64)),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bus, Train, Plane",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff879D95)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.open_in_new,
                              color: Colors.white,
                            ),
                            onTap: () {
                              launch(widget.turl);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          color: Color(0xffE9F4F9),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color(0xffD5E6F2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  "assets/resort.png",
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Restaurant",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5A6C64)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "and hotels",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5A6C64)),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.resturant,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff879D95)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.open_in_new,
                              color: Colors.white,
                            ),
                            onTap: () {
                              launch(widget.rurl);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  widget.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff879D95)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 240,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    itemCount: arr.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ImageListTile(
                        imgUrl: arr[index],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  final Icon icon;
  final String label;
  FeaturesTile({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff5A6C64).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(40)),
              child: icon,
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                width: 70,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5A6C64)),
                ))
          ],
        ),
      ),
    );
  }
}

// class RatingBar extends StatelessWidget {
//   final int rating;
//   RatingBar(this.rating);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.star,
//           color: rating >= 1 ? Colors.white70 : Colors.white30,
//         ),
//         SizedBox(
//           width: 3,
//         ),
//         Icon(
//           Icons.star,
//           color: rating >= 2 ? Colors.white70 : Colors.white30,
//         ),
//         SizedBox(
//           width: 3,
//         ),
//         Icon(
//           Icons.star,
//           color: rating >= 3 ? Colors.white70 : Colors.white30,
//         ),
//         SizedBox(
//           width: 3,
//         ),
//         Icon(
//           Icons.star,
//           color: rating >= 4 ? Colors.white70 : Colors.white30,
//         ),
//         SizedBox(
//           width: 3,
//         ),
//         Icon(
//           Icons.star,
//           color: rating >= 5 ? Colors.white70 : Colors.white30,
//         ),
//       ],
//     ));
//   }
// }

class ImageListTile extends StatelessWidget {
  final String imgUrl;
  ImageListTile({@required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          imgUrl,
          height: 220,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
