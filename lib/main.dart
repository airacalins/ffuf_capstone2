import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/screens/screens.dart';
import 'package:flutter_playground/providers/providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => BottomNav()),
        ChangeNotifierProvider(create: (context) => DrawerNav()),
        ChangeNotifierProvider(create: (context) => JobProvider()),
        ChangeNotifierProvider(create: (context) => CompanyProvider()),
        ChangeNotifierProvider(create: (context) => JobTypeProvider()),
        ChangeNotifierProvider(create: (context) => ApplicationProvider()),
        ChangeNotifierProvider(create: (context) => MessageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        home: const SplashScreen(),
        initialRoute: RouteManager.splashScreen,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
