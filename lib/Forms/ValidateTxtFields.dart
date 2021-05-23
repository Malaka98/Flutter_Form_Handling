class ValidateTxtFields {
  static String? nameValidate(String? value) {
    if (value!.isEmpty) {
      return "Please Enter name";
    }
    return null;
  }

  static String? emailValidate(String? value) {
    if (value!.isEmpty) {
      return "Please Enter email";
    }
    return null;
  }

  static String? pwdValidate(String? value) {
    if (value!.isEmpty) {
      return "Please Enter Password";
    }
    return null;
  }

  static String? phoValidate(String? value) {
    if (value!.isEmpty) {
      return "Please Enter Password";
    }
    return null;
  }
}
