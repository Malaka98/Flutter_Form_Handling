import 'package:flutter/material.dart';

import 'TextField.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("From"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BuildTxtFields.buildNameField(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BuildTxtFields.buildEmailField(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BuildTxtFields.buildPwdField(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BuildTxtFields.buildPhoField(),
                ),
                SizedBox(height: 50),
                Container(
                  child: ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
