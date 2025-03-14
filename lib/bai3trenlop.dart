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
                hintStyle: TextStyle(color: Colors.white),
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
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      right: 10,
                      top: 10,

                      child: Container(
                        child: const Text('😒', style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      right: 10,
                      top: 10,

                      child: Container(
                        child: const Text('😴', style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      right: 10,
                      top: 10,

                      child: Container(
                        child: const Text('😤', style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      right: 10,
                      top: 10,

                      child: Container(
                        child: const Text('😊', style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 180, 171, 171),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20, top: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_horiz),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          bottom: 10,
                          right:
                              10, // Thêm thuộc tính right để đảm bảo Row chiếm toàn bộ chiều rộng
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ), // Thêm SizedBox để tạo khoảng cách giữa Container và RichText
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Speaking skills',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\n10 exercises",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.more_horiz),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          bottom: 10,
                          right:
                              10, // Thêm thuộc tính right để đảm bảo Row chiếm toàn bộ chiều rộng
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    162,
                                    217,
                                    11,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ), // Thêm SizedBox để tạo khoảng cách giữa Container và RichText
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Speaking skills',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\n10 exercises",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.more_horiz),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          bottom: 10,
                          right:
                              10, // Thêm thuộc tính right để đảm bảo Row chiếm toàn bộ chiều rộng
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ), // Thêm SizedBox để tạo khoảng cách giữa Container và RichText
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Speaking skills',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\n10 exercises",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.more_horiz),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Giới thiệu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Liên hệ',
          ),
        ],

        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
