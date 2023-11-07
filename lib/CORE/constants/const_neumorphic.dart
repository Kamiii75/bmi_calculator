import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'const_colors.dart';

class ConstNeumorphic {
  static NeumorphicStyle neumorphicStyle = NeumorphicStyle(
      surfaceIntensity: 1,
      shadowDarkColor: Colors.blueGrey,
      shadowLightColor: Colors.grey.shade100,
      shadowDarkColorEmboss: Colors.blueGrey,
      shadowLightColorEmboss: Colors.grey.shade100,
      shape: NeumorphicShape.convex,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(2.w)),
      depth: 5,
      lightSource: LightSource.top,
      color: ConstColors.kPrimaryColor);

  static NeumorphicStyle neumorphicBtnStyle = NeumorphicStyle(
      surfaceIntensity: 1,
      shadowDarkColor: Colors.blueGrey,
      shadowLightColor: Colors.grey.shade100,
      shadowDarkColorEmboss: Colors.blueGrey,
      shadowLightColorEmboss: Colors.grey.shade100,
      shape: NeumorphicShape.convex,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(2.w)),
      depth: 4,
      lightSource: LightSource.top,
      color: ConstColors.kSecondaryColor);

  static NeumorphicStyle neumorphicIconStyle = NeumorphicStyle(
      surfaceIntensity: 55,
      shape: NeumorphicShape.convex,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(2.w)),
      depth: 8,
      lightSource: LightSource.bottomRight,
      color: ConstColors.kPrimaryColor);
}
