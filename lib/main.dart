import 'package:flutter/material.dart';
import 'package:future_social_media_app/ui/screen/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 1920),
      builder: () => MaterialApp(
        theme: ThemeData(
          fontFamily: 'Tajawal',
          primaryColor: Color(0xFF0F3157),
          accentColor: Color(0xFF1594E5),
          backgroundColor: Color(0xFF0D1426),
          // canvasColor: Colors.orange,
          canvasColor: Color(0xFF979EB1),
          scaffoldBackgroundColor: Color(0xFF0D1426),
          shadowColor: Color(0xFF0D1426),
          cardColor: Color(0xFF0F3157),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
            ),
          ),
          dividerColor: Colors.white,
          dividerTheme: DividerThemeData(
            color: Colors.white,
            space: 6,
          ),
          // iconTheme: IconThemeData(
          //   color: Colors.red,
          //   size: 25,
          // ),
          primaryIconTheme: IconThemeData(
            color: Colors.white,
            size: 30,
          ),
          accentIconTheme: IconThemeData(
            color: Color(0xFF1594E5),
            size: 25,
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            ),
            headline2: TextStyle(
              color: Colors.white,
            ),
            headline3: TextStyle(
              color: Colors.white,
            ),
            headline4: TextStyle(
              color: Colors.white,
            ),
            headline5: TextStyle(
              color: Colors.white,
            ),
            subtitle1: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        home: MainScreen(),
      ),
    );
  }
}
