import 'package:flutter/material.dart';
import 'package:movie_db_project/widgets/movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          const Text('news'),
          MovieListWidget(),
          const Text('serials'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'news'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: 'filems'),
          BottomNavigationBarItem(
              icon: Icon(Icons.tv_rounded), label: 'serial'),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
