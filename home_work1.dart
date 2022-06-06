// ignore_for_file: unused_local_variable
import 'dart:io';
void main() {
  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();
  checkPasswordValidation(password!);
}
checkPasswordValidation(String password) {
  RegExp checkValid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  if (checkValid.hasMatch(password) && password.length>=8) {
    print("Valid Password");
  } else {
    print("Invalid Password! Try again");
  }
}
