import 'package:flutter/material.dart';

//tao 1 class anh kế thừa từ StatelessWidget
class Bai2trenlop extends StatefulWidget {
  const Bai2trenlop({Key? key}) : super(key: key);

  @override
  _Bai2trenlopState createState() => _Bai2trenlopState();
}

class widget1 extends StatelessWidget {
  const widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/widget1.jpg', width: 200),
          const SizedBox(height: 20),
          Text(
            'Index 0: gioi thieu co so vat chat HUIT',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'HUIT là trường đại học công lập thuộc ĐHQG-HCM, được thành lập ngày 1/1/2001. '
              'Trường có 6 khoa đào tạo: Cơ bản, Công nghệ thông tin, Điện tử - Viễn thông, '
              'Kỹ thuật máy tính, Kỹ thuật điều khiển và tự động hóa, và Toán ứng dụng.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class widget2 extends StatelessWidget {
  const widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/widget2.jpg', width: 200),
        const SizedBox(height: 20),
        Text(
          'Index 1: gioi thieu co so vat chat HUIT',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'HUIT là trường đại học công lập thuộc ĐHQG-HCM, được thành lập ngày 1/1/2001. '
            'Trường có 6 khoa đào tạo: Cơ bản, Công nghệ thông tin, Điện tử - Viễn thông, '
            'Kỹ thuật máy tính, Kỹ thuật điều khiển và tự động hóa, và Toán ứng dụng.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

class widget3 extends StatelessWidget {
  const widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40),
            image: const DecorationImage(
              image: AssetImage('assets/images/widget3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 20,
          left: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
            child: const Column(
              children: <Widget>[
                SizedBox(height: 10),
                Text(
                  "san the thao",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "san the thao tien tien "
                    "nhieu phu kien.",
                    maxLines: 4,
                    overflow: TextOverflow.clip,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Bai2trenlopState extends State<Bai2trenlop> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    widget1(),
    widget2(),
    widget3(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('gioi thieu co so vat chat HUIT'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
