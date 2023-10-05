import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardUI extends StatefulWidget {
  const CardUI({super.key});

  @override
  State<CardUI> createState() => _CardUIState();
}

class _CardUIState extends State<CardUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 25),
        child: SizedBox(
          height: 625.h,
          width: 350.w,
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Playground Image
                Container(
                  width: 335.w,
                  height: 375.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(13.r),
                          topLeft: Radius.circular(13.r)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                          alignment: Alignment.center,

                          ///Playground Image
                          image: AssetImage(
                            "assets/images/playground1.jpeg",
                          ))),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///Venue Title
                      Text(
                        "Venue Title",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                        ),
                      ),

                      ///Venue location
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/location_icon_game_bullz.png",
                            fit: BoxFit.fill,
                            semanticLabel: "location_icon_image",
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(width: 7.w),
                          Text(
                            "Venue location",
                            style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Rupee Text
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/rupee_icon_game_bullz.png",
                                fit: BoxFit.fill,
                                semanticLabel: "rupee_icon_image",
                                width: 25.w,
                                height: 25.h,
                                color: Colors.black,
                              ),
                              SizedBox(width: 7.w),
                              Text(
                                "5000",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.sp,
                                ),
                              ),
                            ],
                          ),

                          ///Trending Text
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/fire_icon_game_bullz.png",
                                semanticLabel: "fire_icon_image",
                                fit: BoxFit.fill,
                                width: 25.w,
                                height: 25.h,
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                "175 votes",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 25.h,
                      ),

                      ///Book Now Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: Size(10.w, 25.h)),
                            child: Text(
                              "Book now",
                              style: GoogleFonts.roboto(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
