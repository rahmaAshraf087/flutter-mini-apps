import 'package:flutter/material.dart';
import 'package:whatanddestination/screens/popular_destinations.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 6),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 6),
                  customButton(true, 'All'),
                  SizedBox(width: 12),
                  customButton(false, 'Unread'),
                  SizedBox(width: 12),
                  customButton(false, 'Groups'),
                  SizedBox(width: 12),
                  customButton(false, 'Friends'),
                  SizedBox(width: 12),
                  customButton(false, 'College'),
                  SizedBox(width: 12),
                  customButton(false, 'Family'),
                  SizedBox(width: 12),
                  customButton(false, 'Community'),
                  SizedBox(width: 5),
                ],
              ),
            ),
            SizedBox(height: 14),
            chats('Rahma Ashraf', 'انا فى البيت', '02:40 AM'),
            SizedBox(height: 9),
            chats('Mo Ashraf', 'مش رايح', '01:46 AM'),
            SizedBox(height: 9),
            chats('youssef Ashraf', 'هاجى التلات ان شاء الله', '12:40 AM'),
            SizedBox(height: 9),
            chats('fatoma', 'عاوزين نتقابل', '12:50 AM'),
            SizedBox(height: 9),
            chats('saloma', 'اشوفك فى الكليه', '12:35 AM'),
            SizedBox(height: 9),
            chats('Amool', 'HappyBirthday', '12:00 AM'),
            SizedBox(height: 9),
            chats('Radwti', 'لسه راكبه التوكتوك', '11:56 PM'),
            SizedBox(height: 9),
            chats('sondos', 'اشوفك على خير', '11:16 PM'),
            SizedBox(height: 9),
            chats('BaBa', 'انا جاى فى الطريق', '11:10 PM'),
            SizedBox(height: 6),
            chats('MaMa', 'جهزى الغدا', '11:00 PM'),
            SizedBox(height: 6),
            chats('DoDO', 'جايه الكليه؟', '10:45 PM'),
            SizedBox(height: 6),
            chats('SmSm', 'عاوز زبادى', '10:40 PM'),
            SizedBox(height: 6),
            chats('saloma', 'اشوفك فى الكليه', '10:35 PM'),
            SizedBox(height: 6),
            chats('Amool', 'HappyBirthday', '10:30 PM'),
            SizedBox(height: 6),
            chats('Radwti', 'لسه راكبه التوكتوك', '10:25 PM'),
            SizedBox(height: 6),
            chats('sondos', 'اشوفك على خير', '10:20 PM'),
            SizedBox(height: 6),
            chats('BaBa', 'انا جاى فى الطريق', '10:15 PM'),
            SizedBox(height: 6),
            chats('MaMa', 'جهزى الغدا', '09:50 PM'),
            SizedBox(height: 6),
            chats('DoDO', 'جايه الكليه؟', '09:45 PM'),
            SizedBox(height: 6),
            chats('SmSm', 'عاوز زبادى', '09:40 PM'),
            SizedBox(height: 6),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.message, color: Colors.white),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) {
                return PopularDestinations();
              },
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

Widget customButton(bool first, String cataegory) {
  return TextButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: first ? Color(0xFFE7FCE3) : Color(0xFFEEEEEE),
    ),
    onPressed: () {},
    child: Text(
      cataegory,
      style: TextStyle(
        color: first ? Color(0xFF075E54) : Colors.black54,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget chats(
    String name,
    String message,
    String time,
    // String image,
    ) {
  return Row(
    children: [
      SizedBox(width: 10),
      CircleAvatar(
        radius: 28,
        backgroundImage: AssetImage("assets/pyramids.jpg"),
      ),
      SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            message,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      Spacer(),
      Align(
        alignment: Alignment.topRight,
        child: Text(
          time,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(width: 10),
    ],
  );
}
