// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracking_app/views/start_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  void initState() {
    Future.delayed(
      //เวลาที่หน่วง
      Duration(
        seconds: 3,
      ),
      //เมื่อครบเวลาแล้วจะให้ทำอะไร
      //ในที่นี้จะให้เปิดไปหน้าจอ LoginUi แบบ ไม่สามารถย้อนกลับได้
      () => Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => StartUi(),
        ),
      ),
    );
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 196, 147),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Maney Tracking',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Text(
              'รายรับรายจ่ายของฉัน',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              'Created by : 6419410003',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  color: Color.fromARGB(255, 251, 255, 0),
                ),
              ),
            ),
            Text(
              'DTI-SAU',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  color: Color.fromARGB(255, 251, 255, 0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
