// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace,

// import 'package:flutter/foundation.dart'

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MyStreaksPage extends StatefulWidget {
  const MyStreaksPage({super.key});

  @override
  State<MyStreaksPage> createState() => _MyStreaksPageState();
}

class _MyStreaksPageState extends State<MyStreaksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar..

      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,

        //Back screen icon in title...

        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),

        // Screen title...

        title: Text(
          "My Streaks",
          style: TextStyle(
            color: Color.fromARGB(255, 6, 57, 102),
          ),
        ),
      ),

      // Body...

      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),

                    // Path...

                    Text(
                      "Locker > Progress > Streak",
                      style: TextStyle(
                        color: Colors.blueGrey.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                // Streak counter....

                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 137,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 55,
                            height: 60,
                            color: Colors.transparent,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          SvgPicture.asset(
                            'image/ic_fire.svg',
                            width: 55,
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          // color: Colors.deepOrange,
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SvgPicture.asset(
                                        'image/ic_calendar_new.svg',
                                        width: 70,
                                        height: 70,
                                      ),
                                      Text(
                                        "Current",
                                        style: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 85,
                                        width: 70,
                                        // color: Colors.green.shade200,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            StrokeText(
                                              text: "2",
                                              textStyle: TextStyle(
                                                fontSize: 55,
                                                color: Colors.orange.shade400,
                                              ),
                                              strokeWidth: 5,
                                              strokeColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SvgPicture.asset(
                                        'image/ic_calendar_new.svg',
                                        width: 70,
                                        height: 70,
                                      ),
                                      Text(
                                        "MAX",
                                        style: TextStyle(
                                          color: Colors.orangeAccent,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 85,
                                        width: 70,
                                        // color: Colors.green.shade200,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            StrokeText(
                                              text: "26",
                                              textStyle: TextStyle(
                                                fontSize: 55,
                                                color: Colors.orange.shade400,
                                              ),
                                              strokeWidth: 5,
                                              strokeColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                // Calendar....

                Center(
                  child: Container(
                    // Calendar box decoration...

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 213, 210, 210),
                          blurRadius: 15,
                          spreadRadius: 10,
                        )
                      ],
                    ),

                    // Container Set-up...

                    height: 300,
                    width: 300,

                    // SFDate range picker...

                    child: SfDateRangePicker(
                      view: DateRangePickerView.month,
                      maxDate: DateTime.now(),

                      // Calendar header...

                      headerHeight: 60,
                      headerStyle: DateRangePickerHeaderStyle(
                        textAlign: TextAlign.left,
                        textStyle: TextStyle(
                          color: const Color.fromARGB(255, 10, 47, 77),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      // Month view setting...

                      monthViewSettings: DateRangePickerMonthViewSettings(
                        dayFormat: 'EEE',
                        blackoutDates: [
                          DateTime(2023, 10, 13),
                          DateTime(2023, 10, 20),
                        ],
                        showTrailingAndLeadingDates: true,
                      ),

                      // Month Cell Style...

                      monthCellStyle: DateRangePickerMonthCellStyle(
                        blackoutDateTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        blackoutDatesDecoration: BoxDecoration(
                          color: Colors.indigo.shade800,
                          shape: BoxShape.circle,
                        ),
                        textStyle: TextStyle(fontSize: 16),
                        todayTextStyle: TextStyle(fontSize: 16),
                        disabledDatesTextStyle: TextStyle(fontSize: 16),
                        leadingDatesTextStyle: TextStyle(fontSize: 16),
                        trailingDatesTextStyle: TextStyle(fontSize: 16),
                      ),

                      // Selection...

                      selectionShape: DateRangePickerSelectionShape.circle,
                      selectionMode: DateRangePickerSelectionMode.multiRange,
                      rangeSelectionColor: Color.fromARGB(255, 245, 202, 154),
                      startRangeSelectionColor: Colors.orange,
                      endRangeSelectionColor: Colors.orange,
                      selectionColor: Colors.red,
                      rangeTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      selectionTextStyle:
                          TextStyle(color: Colors.white, fontSize: 16),
                      todayHighlightColor: Colors.black,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // Last 4 lines...

                Center(
                  child: Text(
                    "Lorem ipsum dolor sit amet,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 77, 132),
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Center(
                  child: Text(
                    "consectetur adipiscing elit. Nunc",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 77, 132),
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Center(
                  child: Text(
                    "valuputate libero et velit interdum, ac",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 77, 132),
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Center(
                  child: Text(
                    "aliquet odio mattis.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 77, 132),
                      fontSize: 18,
                    ),
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
