import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CustomChatIcon extends StatelessWidget {
  final int? count;
  const CustomChatIcon({
    this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 10.0.w, vertical: 5.0.h),
          child: Image.asset(
            'assets/images/chat.png',
            height: 30.h,
            width: 30.w,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            width: 20.w,
            height: 20.h,
            child:   Center(
              child: Text(
                count.toString(),
                style: TextStyle(color: K.whiteColor),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: K.mainColor,
            )),
      ],
    );
  }
}