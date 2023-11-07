import 'package:bmi_calculator/UI/widgets/custom_button.dart';
import 'package:bmi_calculator/UI/pages/dialogbox_results.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../CORE/blocs/bloc_export.dart';
import '../../CORE/constants/const_colors.dart';
import '../../CORE/constants/const_neumorphic.dart';
import '../../CORE/utils/injections.dart';
import '../widgets/calculate_bmi.dart';
import '../widgets/icon_content.dart';
import '../widgets/reusable_cards.dart';
import '../widgets/round_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiBloc, BmiState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPress: () => sl<BmiBloc>().add(EventMaleGender()),
                            color: state.selectedMale
                                ? ConstColors.kInActiveColor
                                : ConstColors.kPrimaryColor,
                            childCard: const IconContent(
                              icon: FontAwesomeIcons.mars,
                              label: 'Male',
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            onPress: () =>
                                sl<BmiBloc>().add(EventFemaleGender()),
                            color: !state.selectedMale
                                ? ConstColors.kInActiveColor
                                : ConstColors.kPrimaryColor,
                            childCard: const IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: 'Female',
                            ),
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                      child: ReusableCard(
                        color: ConstColors.kPrimaryColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NeumorphicText(
                              "Height",
                              style: ConstNeumorphic.neumorphicBtnStyle
                                  .copyWith(color: ConstColors.kWhite),
                              textStyle: NeumorphicTextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                NeumorphicText(
                                  state.numbers.toString(),
                                  style: ConstNeumorphic.neumorphicBtnStyle
                                      .copyWith(color: ConstColors.kWhite),
                                  textStyle: NeumorphicTextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                                NeumorphicText(
                                  "cm",
                                  style: ConstNeumorphic.neumorphicBtnStyle
                                      .copyWith(color: ConstColors.kWhite),
                                  textStyle: NeumorphicTextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            SliderTheme(

                              data: SliderTheme.of(context).copyWith(
                                thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 14.0),
                                overlayShape: const RoundSliderOverlayShape(
                                    overlayRadius: 25.0),
                                thumbColor: ConstColors.kInActiveColor,
                                activeTrackColor: Colors.white,
                                overlayColor: ConstColors.kInActiveColor.withOpacity(.5),
                                inactiveTrackColor: const Color(0xFF8D8E98),
                              ),
                              child: Slider(
                                value: state.numbers.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                // activeColor: Color(0xFFFFFFFF),
                                inactiveColor: const Color(0xFF8D8E98),
                                onChanged: (double newValue) => sl<BmiBloc>()
                                    .add(
                                        EventSetNumbers(val: newValue.round())),
                              ),
                            )
                          ],
                        ),
                        onPress: () {},
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            color: ConstColors.kPrimaryColor,
                            childCard: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NeumorphicText(
                                  "Weight",
                                  style: ConstNeumorphic.neumorphicBtnStyle
                                      .copyWith(color: ConstColors.kWhite),
                                  textStyle: NeumorphicTextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                                NeumorphicText(
                                  state.counterWeight.toString(),
                                  style: ConstNeumorphic.neumorphicBtnStyle
                                      .copyWith(color: ConstColors.kWhite),
                                  textStyle: NeumorphicTextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () => sl<BmiBloc>()
                                          .add(EventDecrementCounterWeight()),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () => sl<BmiBloc>()
                                          .add(EventIncrementCounterWeight()),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            onPress: () {},
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            color: ConstColors.kPrimaryColor,
                            childCard: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NeumorphicText(
                                  "Age",
                                  style: ConstNeumorphic.neumorphicBtnStyle
                                      .copyWith(color: ConstColors.kWhite),
                                  textStyle: NeumorphicTextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                                NeumorphicText(
                                  state.ageCounter.toString(),
                                  style: ConstNeumorphic.neumorphicBtnStyle
                                      .copyWith(color: ConstColors.kWhite),
                                  textStyle: NeumorphicTextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () => sl<BmiBloc>()
                                          .add(EventDecrementAgeCounter()),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () => sl<BmiBloc>()
                                          .add(EventIncrementAgeCounter()),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            onPress: () {},
                          ),
                        ),
                      ],
                    )),
                    SizedBox(height: 1.h),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                      child: CustomButton(
                          onPressed: () {
                            Calculate cal = Calculate(
                                height: state.numbers,
                                weight: state.counterWeight);

                            showDialog(
                                context: context,
                                builder: (context) => ResultsDialogBox(
                                      bmiResult: cal.calculateBmi(),
                                      resultText: cal.getResult(),
                                      resultInterpretation:
                                          cal.getInterpretation(),
                                    ));

                          },
                          text: "Calculate"),
                    ),
                    SizedBox(height: 1.h),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
