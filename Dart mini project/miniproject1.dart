import 'dart:io';
void main(){
  print("enter the height in cm:");
  double height=double.parse(stdin.readLineSync()!);
  print("enter the weight in kg:");
  double weight=double.parse(stdin.readLineSync()!);
  double bmi=weight / ((height / 100) * (height / 100));
  if(bmi<18.5){
    print("you are under weight");
  }
  else if(bmi>=18.5 && bmi<=24.9)
  print("you are normal weight");
  else if(bmi>=25 && bmi<=29.9 )
  print("you are over weight");
  else{
    print("you are obesity");
  }
}