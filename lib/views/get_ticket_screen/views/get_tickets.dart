import 'package:flutter/material.dart';
import 'package:movie_app/app_components/app_components.dart';
import 'package:movie_app/utils/asset_routes.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/sized_box.dart';
import 'package:movie_app/utils/text_styles.dart';

class GetTicketsScreen extends StatelessWidget {
  const GetTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhiteColor,
        leading: Icon(Icons.arrow_back_ios, color: kblackColor),
        title: Text('The kings Man',
            style: poppinsStyle(
                size: 16, weight: FontWeight.w600, color: kblackColor)),
        centerTitle: true,
      ),
      body: SizedBox(
        height: height(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.sh,
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.sh,
                        Text('Date',
                            style: poppinsStyle(
                                size: 16, weight: FontWeight.w500)),
                        SizedBox(
                          height: 40,
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 30,
                              itemBuilder: (context, index) => Center(
                                      child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                        color: index == 3
                                            ? kblueColor
                                            : klightGreyColor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Text('${index + 1} Mar'),
                                  ))),
                        ),
                        20.sh,
                        SizedBox(
                          height: 40,
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 30,
                              itemBuilder: (context, index) => Center(
                                  child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                      )))),
                        ),
                      ])),
            )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppComponents().button(
                    text: 'Select Seats',
                    backgroundColor: kblueColor,
                    onTap: () {})),
            10.sh
          ],
        ),
      ),
    );
  }
}
