import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../CORE/constants/const_colors.dart';
import '../../CORE/constants/const_neumorphic.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Neumorphic(

        style: ConstNeumorphic.neumorphicStyle.copyWith(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50.w)),),
        child: Padding(
          padding:  EdgeInsets.all(15.sp),
          child: NeumorphicIcon(
            icon,
            style: ConstNeumorphic.neumorphicIconStyle
                .copyWith(color: ConstColors.kWhite),
            size: 20.sp,
          ),
        ),
      ),
    );

  }
}
