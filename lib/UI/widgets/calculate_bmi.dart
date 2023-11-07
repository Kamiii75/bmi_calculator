import 'dart:math';
class Calculate{

  Calculate({required this.height,required this.weight});
  int height;
  int weight;
  double _bmi=0;
  String calculateBmi(){
    //height /100 because of cm 
    _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }


  String  getResult(){
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return 'Normal Weight';
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }


  String getInterpretation(){
    if (_bmi < 18.5) {
      return "Your BMI is [${_bmi.toStringAsFixed(1)}], indicating that you are underweight. It's essential to focus on a balanced diet and consult a healthcare professional to achieve a healthy weight.";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return "Congratulations! Your BMI is [${_bmi.toStringAsFixed(1)}], indicating that you are within the normal weight range. Keep up the good work with your healthy lifestyle choices!";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return "Your BMI is [${_bmi.toStringAsFixed(1)}], indicating that you are overweight. It's important to maintain a healthy lifestyle through proper diet and exercise.";
    } else {
      return "Your BMI is [${_bmi.toStringAsFixed(1)}], indicating that you are obese. It's crucial to prioritize your health by consulting a healthcare professional and adopting a balanced diet and regular exercise routine to improve your well-being.";
    }
  }
}

