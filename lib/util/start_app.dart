import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../note/theme/color_schemes.g.dart';
import 'ready_app.dart';

export 'package:styled_widget/styled_widget.dart';
export 'package:logger/logger.dart';

startApp({Widget? home}) async {
  runApp(MyApp(home: home,));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    this.home,
  }) : super(key: key);
  final Widget? home;

  @override
  Widget build(BuildContext context) {
    readyApp();

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
            darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
            themeMode: ThemeMode.dark,
            home: home ?? Container(),
          );
        });
  }
}
