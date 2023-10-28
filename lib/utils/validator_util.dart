
import 'package:get/get.dart';
import 'package:validators/validators.dart';

Function validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!isAlphanumeric(value)) {
      return "유저 네임은 알파벳만 들어갈 수 있습니다.";
    } else if (value.length > 12) {
      return "유저네임의 길이를 초과하였습니다.";
    } else if (value.length < 4) {
      return "유저네임의 길이가 너무 짧습니다.";
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value.length > 12) {
      return "패스워드의 길이를 초과하였습니다.";
    } else if (value.length < 4) {
      return "패스워드의 길이가 너무 짧습니다.";
    } else {
      return null;
    }
  };
}

Function validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!value.isEmail) {
      return "이메일 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}