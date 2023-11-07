import 'dart:ui';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../CORE/constants/const_colors.dart';
import '../widgets/reusable_cards.dart';

class ResultsDialogBox extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  const ResultsDialogBox({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.resultInterpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(resultInterpretation);
    return Stack(
      children: [
        Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.all(5.w),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.sp)), //this right here
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.sp)),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  width: 80.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            print("Clossssssed");

                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 16.sp,
                            backgroundColor: Colors.blueGrey,
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      NeumorphicText(
                        "Your Results",
                        textStyle: NeumorphicTextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                        style: const NeumorphicStyle(color: Colors.white),
                      ),


                      NeumorphicText(
                        resultText,
                        textStyle: NeumorphicTextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold),
                        style:
                        const NeumorphicStyle(color: Colors.amberAccent),
                      ),
                      NeumorphicText(
                        bmiResult,
                        textStyle: NeumorphicTextStyle(
                            fontSize: 45.sp,
                            fontWeight: FontWeight.bold),
                        style:
                        const NeumorphicStyle(color: Colors.white),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(15.sp),
                        child: NeumorphicText(
                          resultInterpretation,
                          textAlign: TextAlign.justify,
                          textStyle: NeumorphicTextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                          style:
                          const NeumorphicStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
