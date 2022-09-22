import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/ui/screens/profile/UserProfile.dart';
import 'package:food_delivery_app/ui/screens/search/ItemNotFound.dart';
import 'package:food_delivery_app/ui/screens/no_internet/NoInternet.dart';
import '../screens/orders/Orders.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorConfig.button_color,
          //borderRadius: BorderRadius.circular(34)
        ),
      child: Container(
       // color: Color(0xFFFA4A0C),
        child: ListView(
          padding: padding,
          children: [
            SizedBox(
              height: 60,
            ),
            buildMenuItem(
                icon: Icons.people,
                text: "Profile",
                onClicked: () => selectedItem(context, 1)),
            Padding(
              padding: const EdgeInsets.only(left: 72, right: 140),
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildMenuItem(
                icon: Icons.shopping_cart,
                text: "Orders",
                onClicked: () => selectedItem(context, 2)),
            Padding(
              padding: const EdgeInsets.only(left: 72, right: 140),
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildMenuItem(
                icon: Icons.local_offer_outlined,
                text: "Offers and promo",
                onClicked: () => selectedItem(context, 3)),
            Padding(
              padding: const EdgeInsets.only(left: 72, right: 140),
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildMenuItem(
              icon: Icons.policy_outlined,
              text: "Privacy policy",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72, right: 140),
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildMenuItem(
              icon: Icons.security,
              text: "Security",
            ),
            SizedBox(
              height: 125,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    "Sign-out",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }

  buildMenuItem({IconData icon, String text, Function onClicked}) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserProfile()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Orders()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemNotFound()),
        );
        break;
      case 3:
        break;
    }
  }
}
