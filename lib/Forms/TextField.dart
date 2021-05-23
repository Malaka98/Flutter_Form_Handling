import 'package:flutter/material.dart';

import 'ValidateTxtFields.dart';

class BuildTxtFields {
  static String? _name;
  static String? _email;
  static String? _password;
  static int? _phonenumber;

  static Widget buildNameField() {
    return TextFormField(
      maxLength: 30,
      validator: (text) {
        return ValidateTxtFields.nameValidate(text);
      },
      decoration:
          InputDecoration(labelText: "Name", hintText: "Enter your Name"),
      onSaved: (value) {
        _name = value;
      },
    );
  }

  static Widget buildEmailField() {
    return TextFormField(
      maxLength: 20,
      validator: (text) {
        return ValidateTxtFields.emailValidate(text);
      },
      decoration:
          InputDecoration(labelText: "Email", hintText: "Enter your Email"),
      onSaved: (value) {
        _email = value;
      },
    );
  }

  static Widget buildPwdField() {
    return TextFormField(
      obscureText: true,
      maxLength: 20,
      validator: (text) {
        return ValidateTxtFields.pwdValidate(text);
      },
      decoration: InputDecoration(
          labelText: "Password", hintText: "Enter your Password"),
      onSaved: (value) {
        _password = value;
      },
    );
  }

  static Widget buildPhoField() {
    return TextFormField(
      maxLength: 20,
      validator: (text) {
        return ValidateTxtFields.phoValidate(text);
      },
      decoration: InputDecoration(
          labelText: "Email", hintText: "Enter your phonenumber"),
      onSaved: (value) {
        _phonenumber = int.parse(value.toString());
      },
    );
  }
}
