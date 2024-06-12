import 'package:flutter/foundation.dart';

class RegistrationModel with ChangeNotifier {
  String firstName = '';
  String middleName = '';
  String lastName = '';
  String gender = '';
  String email = '';
  String phoneNumber = '';
  String countryOfBirth = '';

  void setFirstName(String value) {
    firstName = value;
    notifyListeners();
  }

  // Add similar methods for other fields

  void setMiddleName(String value) {
    middleName = value;
    notifyListeners();
  }

  void setLastName(String value) {
    lastName = value;
    notifyListeners();
  }

  void setGender(String value) {
    gender = value;
    notifyListeners();
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPhoneNumber(String value) {
    phoneNumber = value;
    notifyListeners();
  }

  void setCountryOfBirth(String value) {
    countryOfBirth = value;
    notifyListeners();
  }
}
