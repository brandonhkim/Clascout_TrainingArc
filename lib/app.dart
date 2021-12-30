import 'package:flutter/material.dart';
import 'screens/cats/cats.dart';
import 'screens/cat_detail/cat_detail.dart';
import 'style.dart';

const CatsRoute = '/';
const CatDetailRoute = '/cat_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case CatsRoute:
          screen = Cats();
          break;
        case CatDetailRoute:
          final arguments = settings.arguments as Map<String, dynamic>;
          screen = CatDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
          appBarTheme: const AppBarTheme(
            titleTextStyle: AppBarTextStyle,
          ),
          textTheme: const TextTheme(
            headline6: TitleTextStyle,
            bodyText1: Body1TextStyle,
          )
      );
  }
}