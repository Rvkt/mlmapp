import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/custom_textField.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  // Text Editing Controller
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Column(
          children: [
            CustomTextField(
              controller: nameController,
              labelText: "Full Name",
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "Enter your name";
                }
                return null;
              },
              onSaved: (value) {
                setState(() {
                  nameController.text = value!.trim();
                });
              },
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: emailController,
              labelText: "Email",
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "Enter your name";
                }
                return null;
              },
              onSaved: (value) => emailController.text = value!.trim(),
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: mobileController,
              labelText: "Mobile",
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "Enter your name";
                }
                return null;
              },
              onSaved: (value) => mobileController.text = value!.trim(),
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: passwordController,
              labelText: "Password",
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "Enter your name";
                }
                return null;
              },
              onSaved: (value) => passwordController.text = value!.trim(),
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: confirmPasswordController,
              labelText: "Confirm Password",
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "Enter your name";
                }
                return null;
              },
              onSaved: (value) => confirmPasswordController.text = value!.trim(),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                bool validate = _formKey.currentState!.validate();
                print(validate);
                if(validate) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    'login',
                        (route) => false,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 10.0,
                ),
              ),
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
