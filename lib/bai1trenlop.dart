import 'package:flutter/material.dart';
import 'dart:math';

class bai1tl extends StatelessWidget {
  const bai1tl({super.key});

  @override
  Widget build(BuildContext context) {
    return CalculatorHomePage();
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key});

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String display = '0'; // Hiển thị trên màn hình
  String _currentNumber = ''; // Số hiện tại đang nhập
  String _operation = ''; // Phép toán đang thực hiện
  double _num1 = 0; // Số thứ nhất
  double _num2 = 0; // Số thứ hai
  bool _shouldResetDisplay = false; // Đặt lại hiển thị sau khi nhấn phép toán

  void onButtonPressed(String value) {
    setState(() {
      if (value == 'C') {
        // Xóa toàn bộ
        display = '0';
        _currentNumber = '';
        _operation = '';
        _num1 = 0;
        _num2 = 0;
        _shouldResetDisplay = false;
      } else if (value == 'CE') {
        // Xóa số hiện tại
        _currentNumber = '';
        display = '0';
      } else if (value == '⌫') {
        // Xử lý nút backspace
        if (_currentNumber.isNotEmpty) {
          _currentNumber = _currentNumber.substring(
            0,
            _currentNumber.length - 1,
          );
          display = _currentNumber.isEmpty ? '0' : _currentNumber;
        }
      } else if (value == '+' || value == '-' || value == '×' || value == '÷') {
        // Lưu số thứ nhất và phép toán
        _num1 = double.parse(display);
        _operation = value;
        _shouldResetDisplay = true;
      } else if (value == '=') {
        // Thực hiện phép toán
        if (_operation.isNotEmpty) {
          _num2 = double.parse(
            _currentNumber.isEmpty ? display : _currentNumber,
          );
          if (_operation == '+') {
            display = (_num1 + _num2).toString();
          } else if (_operation == '-') {
            display = (_num1 - _num2).toString();
          } else if (_operation == '×') {
            display = (_num1 * _num2).toString();
          } else if (_operation == '÷') {
            if (_num2 != 0) {
              display = (_num1 / _num2).toString();
            } else {
              display = 'Error'; // Chia cho 0
            }
          }
          _currentNumber = display;
          _operation = '';
          _shouldResetDisplay = true;
        }
      } else if (value == '1/x') {
        // Nghịch đảo
        double current = double.parse(display);
        if (current != 0) {
          display = (1 / current).toString();
          _currentNumber = display;
        } else {
          display = 'Error';
        }
      } else if (value == 'x²') {
        // Bình phương
        double current = double.parse(display);
        display = (current * current).toString();
        _currentNumber = display;
      } else if (value == '²√x') {
        // Căn bậc hai
        double current = double.parse(display);
        if (current >= 0) {
          display =
              (sqrt(current)).toString(); // Sử dụng hàm `sqrt` từ `dart:math`
          _currentNumber = display;
        } else {
          display = 'Error';
        }
      } else if (value == '%') {
        // Tính phần trăm
        double current = double.parse(display);
        display = (current / 100).toString();
        _currentNumber = display;
      } else if (value == '.') {
        // Xử lý dấu chấm thập phân
        if (!_currentNumber.contains('.')) {
          _currentNumber = _currentNumber + value;
          display = _currentNumber;
        }
      } else {
        // Xử lý số (0-9)
        if (_shouldResetDisplay) {
          _currentNumber = '';
          _shouldResetDisplay = false;
        }
        if (display == '0' || display == 'Error') {
          _currentNumber = value;
        } else {
          _currentNumber = _currentNumber + value;
        }
        display = _currentNumber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standard'),
        actions: [IconButton(icon: Icon(Icons.history), onPressed: () {})],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Calculator',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Standard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.science),
              title: Text('Scientific'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.graphic_eq),
              title: Text('Graphing'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Programmer'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Date calculation'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Currency'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.straighten),
              title: Text('Volume'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.square_foot),
              title: Text('Length'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.line_weight),
              title: Text('Weight and mass'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.thermostat),
              title: Text('Temperature'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bolt),
              title: Text('Energy'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.crop_square),
              title: Text('Area'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.speed),
              title: Text('Speed'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(
                display,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w200),
              ),
            ),
          ),
          Divider(height: 1),
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                buildButtonRow(['MC', 'MR', 'M+', 'M-']),
                buildButtonRow(['%', 'CE', 'C', '⌫']),
                buildButtonRow(['1/x', 'x²', '²√x', '÷']),
                buildButtonRow(['7', '8', '9', '×']),
                buildButtonRow(['4', '5', '6', '-']),
                buildButtonRow(['1', '2', '3', '+']),
                buildButtonRow(['0', '0', '.', '='], isLastRow: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtonRow(List<dynamic> values, {bool isLastRow = false}) {
    return Row(
      children:
          values.map((value) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.all(1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>((
                      Set<WidgetState> states,
                    ) {
                      if (value == '=') return Colors.blue;
                      return Colors.grey[200]!;
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith<Color>((
                      Set<WidgetState> states,
                    ) {
                      if (value == '=') return Colors.white;
                      return Colors.black;
                    }),
                    padding: WidgetStateProperty.all(EdgeInsets.all(24)),
                  ),
                  onPressed: () => onButtonPressed(value.toString()),
                  child: Text(value.toString(), style: TextStyle(fontSize: 24)),
                ),
              ),
            );
          }).toList(),
    );
  }
}
