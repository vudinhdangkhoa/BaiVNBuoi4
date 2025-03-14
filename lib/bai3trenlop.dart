//import thư viện flutter
import 'package:flutter/material.dart';

//tạo class bai3trenlop kế thừ từ statelesswidget
class bai3trenlop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hi, I'm a student at HUIT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18, // Chữ lớn hơn
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "22, Jan, 2023",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14, // Chữ nhỏ hơn
              ),
            ),
          ],
        ),

        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue[100], // Màu xanh nhạt
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10), // Làm cho khung tròn
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 10),

            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.lightBlue[100],
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'How do you feel today?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
