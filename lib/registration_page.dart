import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  RegistrationPageState createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;
  final usernameController = TextEditingController();
  int platformInt = 0;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          buildEmail(),
          const SizedBox(height: 24),
          buildPassword(),
          const SizedBox(height: 24),
          buildUsername(),
          const SizedBox(height: 24),
          buildPlatform(),
          const SizedBox(height: 24),
          TextButton(
            child: const Text('Submit', style: TextStyle(fontSize: 30)),
            onPressed: () {
              print('Email: ${emailController.text}');
              print('Password: ${password}');
            },
          )
        ],
      )
    );
  }

  Widget buildEmail() => buildTextField(
    'Email',
    'name@example.com',
    'Invalid Email',
    emailController,
    TextInputType.emailAddress
  );

  Widget buildPassword() => TextField(
    decoration: InputDecoration(
      labelText: 'Password',
      errorText: 'Invalid Password',
      suffixIcon: IconButton(
        icon: isPasswordVisible
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        }
      ),
      border: const OutlineInputBorder(),
    ),
    obscureText: !isPasswordVisible,

    onChanged: (value) => setState(() => password = value),
  );

  Widget buildUsername() => buildTextField(
    'Username',
    'JohnSmith123',
    'Invalid Username',
    usernameController,
    TextInputType.text
  );

  Widget buildPlatform() => DropdownButtonFormField<int>(
    value: platformInt,
    onChanged: (int? value) {
        setState(() {
          platformInt = value!;
        });
    },
    items: [
      buildPlatformDropDown('PC', 0, const  Icon(Icons.computer)),
      buildPlatformDropDown('Xbox', 1, const Icon(Icons.offline_bolt)),
      buildPlatformDropDown('PlayStation', 2, const Icon(Icons.offline_bolt))
    ]
  );

  Widget buildTextField(
    String labelText,
    String hintText,
    String errorText,
    TextEditingController controller,
    TextInputType inputType,
  ) => TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      border: const OutlineInputBorder(),
      suffixIcon: controller.text.isEmpty
        ? Container(width: 0)
        : IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => controller.clear()
        )
    ),
    keyboardType: inputType,
    textInputAction: TextInputAction.done,
  );

  DropdownMenuItem<int> buildPlatformDropDown(String platformName, int platformInt, Icon icon) {
    return DropdownMenuItem(
      child: Row(
        children: [
          icon,
          const SizedBox(width: 12),
          Text(platformName)
        ],
      ),
      value: platformInt,
    );
  }
    
}
