import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/custom_textField.dart';

class SponsorForm extends StatefulWidget {
  const SponsorForm({Key? key}) : super(key: key);

  @override
  State<SponsorForm> createState() => _SponsorFormState();
}

class _SponsorFormState extends State<SponsorForm> {
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
            labelText: "Sponsor ID",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter sponsor ID";
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
          // Verify Button
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              elevation: 2.0,
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.blue.shade900, width: 2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
            ),
            child: Text(
              'Verify',
              style: TextStyle(
                color: Colors.blue.shade900,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

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
