import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/ui/screens/home/HomeScreen.dart';
import 'package:food_delivery_app/ui/screens/start_up_screens/SignInTab.dart';
import 'package:food_delivery_app/ui/screens/start_up_screens/SignUpTab.dart';
import 'package:food_delivery_app/ui/screens/bottom_navigation/MyBottomNavigationBar.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),

          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              expandedHeight: 284.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 270.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/chef_cap.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24)),
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 32,
                      right: 32,
                    ),
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      indicatorColor: ColorConfig.button_color,
                      tabs: [
                        Tab(
                          text: "Sign In",
                        ),
                        Tab(
                          text: "Sign Up",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            new SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: SignInTab(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: SignUpTab(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
