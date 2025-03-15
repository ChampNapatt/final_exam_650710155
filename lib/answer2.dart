import 'package:flutter/material.dart';

class AnswerP2 extends StatefulWidget {
  @override
  _CalculationFormState createState() => _CalculationFormState();
}

class _CalculationFormState extends State<AnswerP2> {
  final _formKey = GlobalKey<FormState>();
  final _controller1 = TextEditingController();

  bool _isChecked = false;
  bool _isChecked2 = false;
  String? _selectedItem;
  String? _deli;
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำนวณค่าจัดส่ง')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'น้ำหนักสินค้า (กก.) :',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'น้ำหนักสินค้า (กก.)';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'เลือกสถานที่จัดส่ง',
                  border: OutlineInputBorder(),
                ),
                value: _selectedItem,
                items:
                    ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value;
                  });
                },
                validator:
                    (value) => value == null ? 'กรุณาเลือกสถานที่จัดส่ง' : null,
              ),
              SizedBox(height: 20),
              ListTile(title: Text("บริการเสริม")),
              CheckboxListTile(
                title: const Text('แพ็คกิ้งพิเศษ (+20 บาท)'),
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('ประกันพัสดุ (+50 บาท)'),
                value: _isChecked2,
                onChanged: (value) {
                  setState(() {
                    _isChecked2 = value!;
                  });
                },
              ),
              ListTile(title: Text("เลือกความเร่งด่วน")),
              RadioListTile(
                title: const Text('ปกติ (0 บาท)'),
                value: 'ปกติ',
                groupValue: _deli,
                onChanged: (value) {
                  setState(() {
                    _deli = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วน (+30 บาท)'),
                value: 'ด่วน',
                groupValue: _deli,
                onChanged: (value) {
                  setState(() {
                    _deli = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วนพิเศษ (+50 บาท)'),
                value: 'ด่วนพิเศษ',
                groupValue: _deli,
                onChanged: (value) {
                  setState(() {
                    _deli = value.toString();
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: main, child: Text('คำนวณค่าจัดส่ง')),
              SizedBox(height: 20),
              Text(_result),
            ],
          ),
        ),
      ),
    );
  }

  void main() {
    double weight = double.parse(_controller1.text);
    double price = 0;
    double x = 0;
    double y = 0;

    if (_selectedItem == 'ในเมือง') {
      price = 10;
    } else if (_selectedItem == 'ต่างจังหวัด') {
      price = 15;
    } else if (_selectedItem == 'ต่างประเทศ') {
      price = 50;
    }

    double value_1 = weight * price;
    if (_isChecked) {
      x = 20;
    }
    if (_isChecked2) {
      y = 50;
    }
    double price2 = x + y;
    double price3 = 0;
    if (_deli == 'ปกติ') {
      price3 = 0;
    } else if (_deli == 'ด่วน') {
      price3 = 30;
    } else if (_deli == 'ด่วนพิเศษ') {
      price3 = 50;
    }
    double total = value_1 + price2 + price3;

    setState(() {
      _result = 'ค่าจัดส่งทั้งหมด: ${total.toStringAsFixed(2)} บาท';
    });
  }
}
