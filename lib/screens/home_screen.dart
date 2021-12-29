import 'package:flutter/material.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
import 'package:movies/partials/sliders/media_slider.dart';
import 'package:movies/screens/sidebar.dart';
import 'package:movies/styles/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarScreen(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              NavBar(),
              MediaSlider("Films populaires", "Cette semaine", "movie"),
              MediaSlider("Séries populaires", "Cette semaine", "tv"),
              SizedBox(
                height: kVerticalSpacer * 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
