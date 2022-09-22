import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/dimen.dart';

class Snacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: DimensionConfig.top_padding_for_main_container,
                left: DimensionConfig.left_padding_for_main_container,
                right: DimensionConfig.right_padding_for_main_container),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: [
                Container(
                  height: DimensionConfig.height_for_container,
                  width: DimensionConfig.width_for_container,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        DimensionConfig.border_radius__of_main_container),
                  ),
                  child: ListView(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height:
                              DimensionConfig.sized_box_before_food_item_name,
                        ),
                        Text(
                          "Crispy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Aloo Tikki",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: DimensionConfig
                                  .padding_between_food_item_name_and_price),
                          child: Text(
                            "N1,900",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Positioned(
                  top: DimensionConfig.image_position_on_stack_top,
                  child: Container(
                    width: DimensionConfig.width_for_image_container,
                    height: DimensionConfig.height_for_image_container,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius:
                                DimensionConfig.blur_Radius_of_image_container,
                            color: Colors.grey,
                            offset: Offset.fromDirection(2))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/crispy_aloo_tikki.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: DimensionConfig.top_padding_for_main_container,
                left: DimensionConfig.left_padding_for_main_container,
                right: DimensionConfig.right_padding_for_main_container),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: [
                Container(
                  height: DimensionConfig.height_for_container,
                  width: DimensionConfig.width_for_container,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        DimensionConfig.border_radius__of_main_container),
                  ),
                  child: ListView(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height:
                              DimensionConfig.sized_box_before_food_item_name,
                        ),
                        Text(
                          "Crispy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Aloo Tikki",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: DimensionConfig
                                  .padding_between_food_item_name_and_price),
                          child: Text(
                            "N1,900",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Positioned(
                  top: DimensionConfig.image_position_on_stack_top,
                  child: Container(
                    width: DimensionConfig.width_for_image_container,
                    height: DimensionConfig.height_for_image_container,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius:
                                DimensionConfig.blur_Radius_of_image_container,
                            color: Colors.grey,
                            offset: Offset.fromDirection(2))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/crispy_aloo_tikki.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: DimensionConfig.top_padding_for_main_container,
                left: DimensionConfig.left_padding_for_main_container,
                right: DimensionConfig.right_padding_for_main_container),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: [
                Container(
                  height: DimensionConfig.height_for_container,
                  width: DimensionConfig.width_for_container,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        DimensionConfig.border_radius__of_main_container),
                  ),
                  child: ListView(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height:
                              DimensionConfig.sized_box_before_food_item_name,
                        ),
                        Text(
                          "Crispy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Aloo Tikki",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: DimensionConfig
                                  .padding_between_food_item_name_and_price),
                          child: Text(
                            "N1,900",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Positioned(
                  top: DimensionConfig.image_position_on_stack_top,
                  child: Container(
                    width: DimensionConfig.width_for_image_container,
                    height: DimensionConfig.height_for_image_container,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius:
                                DimensionConfig.blur_Radius_of_image_container,
                            color: Colors.grey,
                            offset: Offset.fromDirection(2))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/crispy_aloo_tikki.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
