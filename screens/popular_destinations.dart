import 'package:flutter/material.dart';

class PopularDestinations extends StatelessWidget {
  const PopularDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Rahma 👋",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Text(
              'Explore Egypt',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 24,
            child: Image(image: AssetImage('assets/person.png')),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    whereprefer(true, 'Most Popular'),
                    SizedBox(width: 10),
                    whereprefer(false, 'Historical'),
                    SizedBox(width: 10),
                    whereprefer(false, 'Beaches'),
                    SizedBox(width: 10),
                    whereprefer(false, 'Desert'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Popular Destinations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              places(
                'assets/pyramids.jpg',
                'Giza Pyramids',
                'Cairo, Egypt',
                '20',
              ),
              SizedBox(height: 6),
              places('assets/blue_hole.png', 'Blue Hole', 'Dahab, Sinai', '50'),
              SizedBox(height: 6),
              places('assets/Oasis.jpg', 'Siwa Oasis', 'Matrouh, Egypt', '40'),
              SizedBox(height: 6),
              places('assets/temple.png', 'Luxor Temple', 'Luxor, Egypt', '35'),
              SizedBox(height: 6),
              places('assets/nuba.png', 'Nubian Village', 'Aswan, Egypt', '45'),
              SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}

Widget whereprefer(bool first, String type) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      backgroundColor: first ? Color(0xFF009688) : Color(0xFFFFFFFF),
      side: BorderSide(color: Color(0xFF009688)),
    ),
    onPressed: () {

    },
    child: Text(
      type,
      style: TextStyle(color: first ? Colors.white : Color(0xFF009688)),
    ),
  );
}

Widget places(String image, String name, String location, String price) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '📍 $location',
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF009688),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Book \$$price',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 5),
            ],
          ),
        ),
      ],
    ),
  );
}
