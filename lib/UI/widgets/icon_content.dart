import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../CORE/constants/const_colors.dart';
import '../../CORE/constants/const_neumorphic.dart';


class IconContent extends StatelessWidget {

  const IconContent({super.key, required this.icon,required this.label});

  final  IconData  icon;
  final  String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        NeumorphicIcon(
          icon,
          style: ConstNeumorphic.neumorphicIconStyle
              .copyWith(color: ConstColors.kWhite),
          size: 40.sp,
        ),

        SizedBox(
          height:2.h,
        ),
        NeumorphicText(
          label,
          textAlign: TextAlign.justify,
          textStyle: NeumorphicTextStyle(
              fontSize: 18.sp, fontWeight: FontWeight.bold),
          style: const NeumorphicStyle(color: Colors.white),
        ),
      ],
    );
  }
}