import 'package:bmi_calculator/CORE/constants/const_neumorphic.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


// Refactoring our code
class ReusableCard extends StatelessWidget {
  //  key is used to keep track of the state of the widget

  const ReusableCard({super.key, required this.color,required this.childCard,required this.onPress});
  // when we create a new ReusableCard  the existing color will be destroyed  that's why we use final with color
  // we can't use const because , A const can't have access to anything in the runtime..
  final Color color;
  final  Widget childCard;
  // function as a first order.......
  final Function()  onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(15.sp),
      child: NeumorphicButton(
        style: ConstNeumorphic.neumorphicStyle.copyWith(color: color),
        onPressed: onPress,
          child:childCard,
      ),
    );
  }
}