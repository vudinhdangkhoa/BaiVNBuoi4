import 'package:flutter/material.dart';

class Bai5venha extends StatelessWidget {
  const Bai5venha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Hello', style: TextStyle(fontSize: 20)),
              TextSpan(
                text: '\nMitch KoKo',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10), // Làm cho khung tròn
            ),
            child: IconButton(
              icon: const Icon(Icons.account_circle_rounded),
              color: Colors.black,
              iconSize: 20,
              onPressed: () {},
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Stack(
              children: [
                Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  left: 30,
                  bottom: 20,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(color: Colors.purpleAccent),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text(
                              'How do you feel?',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Fill out your medical card right now',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(150, 50),
                              ),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
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
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 10),

            child: SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'How do you feel?',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 191, 87, 210),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),

                textAlignVertical: TextAlignVertical.center,
                maxLines: null,
                expands: true,
              ),
              height: 80,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 170,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 191, 87, 210),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'dentist',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 100,
                  width: 170,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 191, 87, 210),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'surgeon',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctor List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: const Color.fromARGB(255, 236, 233, 233),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              children: [
                Card(
                  child: Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 191, 87, 210),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Images/doctor.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Dr. John Doe',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'surgeon',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Card(
                  child: Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 191, 87, 210),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Images/doctor.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Dr. John Doe',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'surgeon',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
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
