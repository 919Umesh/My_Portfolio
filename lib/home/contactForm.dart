import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intro_appp/res/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../view/projects/components/title_text.dart';

class ContactFormScreen extends StatefulWidget {
  @override
  _ContactFormScreenState createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _interestController = TextEditingController();

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final response = await http.post(
        Uri.parse('https://api.web3forms.com/submit'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: '''
          {
            "access_key": "ad312123-21f2-4753-b96c-68dc2288a315",
            "name": "${_nameController.text}",
            "email": "${_emailController.text}",
            "message": "${_messageController.text}",
            "interest": "${_interestController.text}"
          }
        ''',
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form submitted successfully!')),
        );
        _nameController.clear();
        _emailController.clear();
        _messageController.clear();
        _interestController.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to submit form. Please try again.')),
        );
      }
    }
  }

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Say Hi! and tell me about your idea",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Have a project in mind? Let's bring it to life together.\nSend me a message and I'll get back to you as soon as possible.",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          "Contact Information",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email Address", style: TextStyle(color: Colors.white)),
            Text("thakuriumesh919@gmail.com", style: TextStyle(color: Colors.white)),
            SizedBox(height: 5),
            Text("Phone Number", style: TextStyle(color: Colors.white)),
            Text("+977-9868732774", style: TextStyle(color: Colors.white)),
          ],
        ),
        const SizedBox(height: 30),
        const Text(
          "Follow me:",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(EvaIcons.twitter, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mail, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFormField({
    required TextEditingController controller,
    required String label,
    required String hint,
    int maxLines = 1,
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 18,
          color: Colors.grey[700],
          fontWeight: FontWeight.bold,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey[500],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.grey[400]!,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        fillColor: Colors.white,
        filled: true,
        isDense: true,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your ${label.toLowerCase()}';
        }
        return null;
      },
    );
  }

  Widget _buildContactForm() {
    return Container(
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormField(
              controller: _nameController,
              label: 'Name',
              hint: 'Enter your name...',
            ),
            const SizedBox(height: 20),
            _buildFormField(
              controller: _emailController,
              label: 'Email',
              hint: 'Enter your mail here...',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            _buildFormField(
              controller: _interestController,
              label: 'Subject',
              hint: 'Enter your subject here...',
            ),
            const SizedBox(height: 20),
            _buildFormField(
              controller: _messageController,
              label: 'Message',
              hint: 'Enter your message here...',
              maxLines: 5,
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [linear1, linear2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  ),
                  child: const Text(
                    'Submit Form',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TitleText(prefix: 'Contact', title: 'Form'),
                const SizedBox(height: 20.0),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 900) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: _buildContactInfo(),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: _buildContactForm(),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          _buildContactForm(),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: _buildContactInfo(),
                          ),


                        ],
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}