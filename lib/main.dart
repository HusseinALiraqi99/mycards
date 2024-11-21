import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: LayoutBuilder( // لضمان التفاعل مع الشاشة بشكل مرن
            builder: (context, constraints) {
              final screenWidth = constraints.maxWidth;
              final screenHeight = constraints.maxHeight;

              return Padding(
                padding: EdgeInsets.all(screenWidth * 0.05), // حشوة نسبية
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/1.jpg'),
                      radius: screenWidth * 0.4, // حجم نسبي للصورة
                    ),
                    SizedBox(height: screenHeight * 0.02), // تباعد نسبي

                    Center(
                      child: Text(
                        "علي العبيدي ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.07, // حجم خط نسبي
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoKufiArabic',
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01), // تباعد نسبي

                    Center(
                      child: Text(
                        "اداري  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.05, // حجم خط نسبي
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoKufiArabic',
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03), // تباعد إضافي

                    // حقل رقم الهاتف
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(screenWidth * 0.03), // حشوة داخلية نسبية
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.cyan[700], size: screenWidth * 0.07),
                          SizedBox(width: screenWidth * 0.02), // تباعد نسبي
                          Text(
                            "0780415125",
                            style: TextStyle(
                              fontSize: screenWidth * 0.05, // حجم خط نسبي
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.02), // تباعد نسبي

                    // حقل البريد الإلكتروني
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(screenWidth * 0.03), // حشوة داخلية نسبية
                      child: Row(
                        children: [
                          Icon(Icons.email, color: Colors.cyan[700], size: screenWidth * 0.07),
                          SizedBox(width: screenWidth * 0.02), // تباعد نسبي
                          Text(
                            "hussein@gmail.com",
                            style: TextStyle(
                              fontSize: screenWidth * 0.05, // حجم خط نسبي
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
