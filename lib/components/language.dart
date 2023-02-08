import 'package:flutter/cupertino.dart';
import 'package:stack_soft/main.dart';

class Language extends ChangeNotifier {
  String _lang = language;

  getLanguage() {
    return _lang;
  }

  setLanguage(String lang) {
    _lang = lang;
    notifyListeners();
  }

  String phone_number() {
    if (getLanguage() == 'AR') {
      return "رقم الهاتف";
    } else {
      return "Phone Number";
    }
  }

  String password() {
    if (getLanguage() == 'AR') {
      return "كلمة السر";
    } else {
      return "Password";
    }
    
  }

  String login() {
    if (getLanguage() == 'AR') {
      return "تسجيل الدخول";
    } else {
      return "Login";
    }
  }

  String donthave() {
    if (getLanguage() == 'AR') {
      return "ليس لديك حساب؟ ";
    } else {
      return "Don't Have Account? ";
    }
  }

  String joinus() {
    if (getLanguage() == 'AR') {
      return "انضم إلينا";
    } else {
      return "Join Us";
    }
  }

  String allrights() {
    if (getLanguage() == 'AR') {
      return "Betakatkom.com جميع الحقوق محفوظة ٢٠٢٣";
    } else {
      return "All Rights Reserved 2023 Betakatkom.com";
    }
  }



}
