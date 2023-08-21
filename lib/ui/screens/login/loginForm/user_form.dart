import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/custom_textField.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final formKey = GlobalKey<FormState>();

  final sponsorIDController = TextEditingController();
  final mobileController = TextEditingController();

  @override
  void dispose() {
    sponsorIDController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: sponsorIDController,
            labelText: "Enter Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your registered email";
              }
              return null;
            },
            onSaved: (value) {
              setState(() {
                sponsorIDController.text = value!.trim();
              });
            },
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            controller: mobileController,
            labelText: "Mobile",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your registered mobile";
              }
              return null;
            },
            onSaved: (value) {
              setState(() {
                mobileController.text = value!.trim();
              });
            },
          ),
          const SizedBox(height: 16.0),

          // Login Button
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                'home',
                    (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade900,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
            ),
            child: const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
