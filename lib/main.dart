import 'package:chat_ui/providers/home_provider.dart';
import 'package:chat_ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: ChatApp(),
    ));

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  static Map<int, Color> darkPrimaryColor = {
    50: Color.fromRGBO(22, 22, 44, .1),
    100: Color.fromRGBO(22, 22, 44, .2),
    200: Color.fromRGBO(22, 22, 44, .3),
    300: Color.fromRGBO(22, 22, 44, .4),
    400: Color.fromRGBO(22, 22, 44, .5),
    500: Color.fromRGBO(22, 22, 44, .6),
    600: Color.fromRGBO(22, 22, 44, .7),
    700: Color.fromRGBO(22, 22, 44, .8),
    800: Color.fromRGBO(22, 22, 44, .9),
    900: Color.fromRGBO(22, 22, 44, 1),
  };
  MaterialColor appPrimaryDarkColor =
      MaterialColor(0xFF16162C, darkPrimaryColor);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Colors.green,
          brightness: Brightness.light,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
            elevation: 0,
            textTheme: TextTheme(
              headline6: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.black),
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey)),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: appPrimaryDarkColor,
          accentColor: Colors.green,
          canvasColor: appPrimaryDarkColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: appPrimaryDarkColor,
            textTheme: TextTheme(
                headline6: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
                caption: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white)),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey),
          textTheme: TextTheme(
              caption: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Colors.white))),
      routes: {
        "/": (_) => HomeScreen(),
      },
    );
  }
}
