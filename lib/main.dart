import 'package:flutter/material.dart';
import 'package:movie_db_project/theme/app_colors.dart';
import 'package:movie_db_project/widgets/auth/auth_widget.dart';
import 'package:movie_db_project/widgets/main_screen/main_screen_widget.dart';
import 'package:movie_db_project/widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainDarkBlue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey),
      ),
      routes: {
        '/': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/main_screen/movie_details': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int) {
            return MovieDetailsWidget(movieId: arguments);
          } else {
            return MovieDetailsWidget(movieId: 0);
          }
        },
      },
      initialRoute: '/',
    );
  }
}
