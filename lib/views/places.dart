import 'package:flutter/material.dart';
import 'package:travelguide/views/single_city.dart';

class PlacesScreen extends StatelessWidget {
  // const PlacesScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> clityList = const [
    {
      "address": "Jaipur the pink city",
      "id": "jaipur_01",
      "image":
          "https://i.pinimg.com/originals/b7/3a/13/b73a132e165978fa07c6abd2879b47a6.png",
      "lat": 26.922070,
      "lng": 75.778885,
      "name": "Jaipur India",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "New Delhi capital of india",
      "id": "delhi_02",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/9/96/Delhi_Red_fort.jpg",
      "lat": 28.644800,
      "lng": 77.216721,
      "name": "Delhi City India",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Mumbai City",
      "id": "mumbai_03",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/7/7e/Mumbai_Taj.JPG",
      "lat": 19.076090,
      "lng": 72.877426,
      "name": "Mumbai City India",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Udaipur City",
      "id": "udaipur_04",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": 24.571270,
      "lng": 73.691544,
      "name": "Udaipur City India",
      "phone": "7014333352",
      "region": "South Asia"
    }
  ];

  getDetails(Map singleCityData, BuildContext context) {
    print(singleCityData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SingleCity(
          cityData: singleCityData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("City List of India"),
      ),
      body: ListView.builder(
        itemCount: clityList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              children: [
                Image.network(
                  clityList[index]['image'],
                  height: 200,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        clityList[index]['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getDetails(clityList[index], context);
                      },
                      child: const Text("View Details"),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
