import 'package:flutter/material.dart';

class Bai6venha extends StatelessWidget {
  const Bai6venha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 227, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 227, 227),
        title: Center(
          child: const Text('PLAYSIT', textAlign: TextAlign.center),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 10,
                  offset: Offset(-6, -6),
                ),
                BoxShadow(
                  color: const Color.fromARGB(255, 54, 52, 52),
                  blurRadius: 10,
                  offset: Offset(3, 3),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              iconSize: 20,
              color: Colors.black,
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Container(
              width: 450,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      width: 440,
                      height: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/widget2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Kota the Friend',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    122,
                                    116,
                                    116,
                                  ),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: '\nBirdie',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite, color: Colors.redAccent),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40, left: 40, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Text(
                    '0:00',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shuffle),
                    color: Colors.black,
                    iconSize: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.repeat),
                    color: Colors.black,
                    iconSize: 15,
                  ),
                ),
                Text(
                  '4:22',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Slider(
                  value: 152,
                  min: 0,
                  max: 262,
                  activeColor: Colors.pinkAccent,
                  inactiveColor: Colors.white30,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Row(
              children: [
                Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 206, 205, 205),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.skip_previous),
                    onPressed: () {},
                    iconSize: 40,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  height: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 206, 205, 205),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                    iconSize: 40,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 206, 205, 205),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.skip_next),
                    onPressed: () {},
                    iconSize: 40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
