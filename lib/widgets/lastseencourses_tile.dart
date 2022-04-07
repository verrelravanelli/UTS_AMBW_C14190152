import 'package:flutter/material.dart';

class LastSeenCoursesTile extends StatelessWidget {
  final String namaCourses;
  final String jam;
  final Icon ikon;

  const LastSeenCoursesTile(
      {Key? key,
      required this.namaCourses,
      required this.jam,
      required this.ikon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.pinkAccent[100],
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            child: ikon,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  namaCourses,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  jam,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 45.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
