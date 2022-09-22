import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/screens/search/Info.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.all_screen_background_color,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Spicy Chicken",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: ColorConfig.all_screen_background_color,
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    34,
                  ),
                  topLeft: Radius.circular(34)),
              color: Color(0xFFF9F9F9),
              // color: Colors.red
            ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: Text(
                  "Found 6 Result",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              /*SizedBox(
                height: 50,
              ),*/
              Expanded(
                child: StaggeredGridView.count(
                scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 30.0,
                    crossAxisSpacing: 15.0,
                    staggeredTiles: [
                      StaggeredTile.extent(1, 280),
                      StaggeredTile.extent(1, 340),
                      StaggeredTile.extent(1, 280),
                      StaggeredTile.extent(1, 280),
                      StaggeredTile.extent(1, 280),
                      StaggeredTile.extent(1, 280),
                    ],
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        //all the padding in this is keep as it is its required for creating view,2nd column 1st item padding value is change
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Info(),
                                ));
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: DimensionConfig.height_for_container,
                                width: DimensionConfig.width_for_container,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionConfig
                                          .border_radius__of_main_container),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 0),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: DimensionConfig
                                          .sized_box_before_food_item_name,
                                    ),
                                    Text(
                                      "Chicken",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Lollipop",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: DimensionConfig
                                                .padding_between_food_item_name_and_price)),
                                    Text(
                                      "N1,400",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //Padding(padding: EdgeInsets.only(bottom: 34))
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: DimensionConfig
                                      .image_position_on_stack_top,
                                  child: Container(
                                    height: DimensionConfig
                                        .height_for_image_container,
                                    width: DimensionConfig
                                        .width_for_image_container,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: DimensionConfig
                                                  .blur_Radius_of_image_container,
                                              offset: Offset.fromDirection(2)),
                                        ]),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/spicy_chicken.jpg"),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 120),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Info(),
                                ));
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: DimensionConfig.height_for_container,
                                width: DimensionConfig.width_for_container,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionConfig
                                          .border_radius__of_main_container),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 0),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: DimensionConfig
                                          .sized_box_before_food_item_name,
                                    ),
                                    Text(
                                      "Chicken",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Masala",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: DimensionConfig
                                                .padding_between_food_item_name_and_price)),
                                    Text(
                                      "N1,400",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Padding(padding: EdgeInsets.only(bottom: 34))
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: DimensionConfig
                                      .image_position_on_stack_top,
                                  child: Container(
                                    height: DimensionConfig
                                        .height_for_image_container,
                                    width: DimensionConfig
                                        .width_for_image_container,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: DimensionConfig
                                                  .blur_Radius_of_image_container,
                                              offset: Offset.fromDirection(2)),
                                        ]),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/masala_chicken.jpg"),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Info(),
                                ));
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: DimensionConfig.height_for_container,
                                width: DimensionConfig.width_for_container,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionConfig
                                          .border_radius__of_main_container),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 0),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: DimensionConfig
                                          .sized_box_before_food_item_name,
                                    ),
                                    Text(
                                      "Chicken",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Curry",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: DimensionConfig
                                                .padding_between_food_item_name_and_price)),
                                    Text(
                                      "N1,400",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Padding(padding: EdgeInsets.only(bottom: 34))
                                  ],
                                ),
                              ),
                              Positioned(
                                top:
                                    DimensionConfig.image_position_on_stack_top,
                                child: Container(
                                  height: DimensionConfig
                                      .height_for_image_container,
                                  width:
                                      DimensionConfig.width_for_image_container,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: DimensionConfig
                                                .blur_Radius_of_image_container,
                                            offset: Offset.fromDirection(2)),
                                      ]),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/chicken_curry.jpeg"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Info(),
                                ));
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: DimensionConfig.height_for_container,
                                width: DimensionConfig.width_for_container,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionConfig
                                          .border_radius__of_main_container),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 0),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: DimensionConfig
                                          .sized_box_before_food_item_name,
                                    ),
                                    Text(
                                      "Chicken",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tandoori",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: DimensionConfig
                                                .padding_between_food_item_name_and_price)),
                                    Text(
                                      "N1,400",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Padding(padding: EdgeInsets.only(bottom: 34))
                                  ],
                                ),
                              ),
                              Positioned(
                                top:
                                    DimensionConfig.image_position_on_stack_top,
                                child: Container(
                                  height: DimensionConfig
                                      .height_for_image_container,
                                  width:
                                      DimensionConfig.width_for_image_container,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: DimensionConfig
                                                .blur_Radius_of_image_container,
                                            offset: Offset.fromDirection(2)),
                                      ]),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/tandoori.jpg"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Info(),
                                ));
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: DimensionConfig.height_for_container,
                                width: DimensionConfig.width_for_container,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionConfig
                                          .border_radius__of_main_container),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 0),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: DimensionConfig
                                          .sized_box_before_food_item_name,
                                    ),
                                    Text(
                                      "Chicken",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tandoori",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: DimensionConfig
                                                .padding_between_food_item_name_and_price)),
                                    Text(
                                      "N1,400",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Padding(padding: EdgeInsets.only(bottom: 34))
                                  ],
                                ),
                              ),
                              Positioned(
                                top:
                                    DimensionConfig.image_position_on_stack_top,
                                child: Container(
                                  height: DimensionConfig
                                      .height_for_image_container,
                                  width:
                                      DimensionConfig.width_for_image_container,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: DimensionConfig
                                                .blur_Radius_of_image_container,
                                            offset: Offset.fromDirection(2)),
                                      ]),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/tandoori.jpg"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Info(),
                                ));
                          },
                          child: Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            fit: StackFit.loose,
                            children: [
                              Container(
                                height: DimensionConfig.height_for_container,
                                width: DimensionConfig.width_for_container,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionConfig
                                          .border_radius__of_main_container),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 0),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: DimensionConfig
                                          .sized_box_before_food_item_name,
                                    ),
                                    Text(
                                      "Chicken",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tandoori",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: DimensionConfig
                                                .padding_between_food_item_name_and_price)),
                                    Text(
                                      "N1,400",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Padding(padding: EdgeInsets.only(bottom: 34))
                                  ],
                                ),
                              ),
                              Positioned(
                                top:
                                    DimensionConfig.image_position_on_stack_top,
                                child: Container(
                                  height: DimensionConfig
                                      .height_for_image_container,
                                  width:
                                      DimensionConfig.width_for_image_container,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: DimensionConfig
                                                .blur_Radius_of_image_container,
                                            offset: Offset.fromDirection(2)),
                                      ]),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/tandoori.jpg"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
