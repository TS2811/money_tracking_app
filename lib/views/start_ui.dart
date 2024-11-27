// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:money_tracking_app/views/login_ui.dart';
import 'package:money_tracking_app/views/register_ui.dart';

class StartUi extends StatefulWidget {
  const StartUi({super.key});

  @override
  State<StartUi> createState() => _StartUiState();
}

class _StartUiState extends State<StartUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg.png',
            ),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/money.png',
                  width: MediaQuery.of(context).size.height * 0.35,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'บันทึก\nรายรับ-รายจ่าย',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 196, 147),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginUi(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 196, 147),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), 
                  ),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.80,
                    MediaQuery.of(context).size.height * 0.060,
                  ),
                ),
                child: Text(
                  'เริ่มใช้งานแอปพลิเคชัน',
                  style: TextStyle(
                    fontSize:
                        MediaQuery.of(context).size.height * 0.02, // ขนาดฟอนต์
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ยังไม่ได้ลงทะเบียน?  ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterUI(),
                        ),
                      );
                    },
                    child: Text(
                      'ลงทะเบียน',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        color: Color.fromARGB(255, 0, 196, 147),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
