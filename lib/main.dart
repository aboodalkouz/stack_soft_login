import 'package:flutter/material.dart';
import 'screens/loginpage.dart';

String language = 'AR';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale("en", ""),
      //   Locale("ar", ""),
      // ],
      // localeResolutionCallback: (currentLang, supportedLang) {
      //   if (currentLang != null) {
      //     for (Locale locale in supportedLang) {

      //     }
      //   }
      //   return supportedLang.first;
      // },
    );
  }
}
