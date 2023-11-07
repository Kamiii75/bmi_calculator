import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../CORE/constants/const_colors.dart';
import '../../CORE/constants/const_neumorphic.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final double? hh;
  final double? ww;
  final String text;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.hh,
    this.ww,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hh ?? 6.h,
      width: ww ?? 100.w,
      child: NeumorphicButton(
        onPressed: onPressed,
        style: ConstNeumorphic.neumorphicStyle,
        child: Center(
          child: NeumorphicText(
            text,
            style: ConstNeumorphic.neumorphicBtnStyle
                .copyWith(color: ConstColors.kWhite),
            textStyle: NeumorphicTextStyle(
                fontSize: 16.sp, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
