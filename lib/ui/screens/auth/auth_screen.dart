import 'package:app_store/common/widget/custom_elevated_button.dart';
import 'package:app_store/common/widget/custom_text_field.dart';
import 'package:app_store/constants/app_constans.dart';
import 'package:flutter/material.dart';

enum AuthMode { signIn, signUp }

class AuthScreen extends StatefulWidget {
  static const routeName = '/auth';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthMode _authMode = AuthMode.signUp;
  final _formSignUpKey = GlobalKey<FormState>();
  final _formSignInKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Bienvenido a la app store',
            style: AppConstants.titleStyle,
          ),
          const SizedBox(height: AppConstants.margin),
          ListTile(
            title: const Text('Registrarse'),
            tileColor: _authMode == AuthMode.signUp
                ? AppConstants.backgroundColor
                : AppConstants.greyBackgroundColor,
            leading: Radio(
              activeColor: AppConstants.primaryColor,
              value: AuthMode.signUp,
              groupValue: _authMode,
              onChanged: (AuthMode? value) {
                setState(() {
                  _authMode = value!;
                });
              },
            ),
          ),
          if (_authMode == AuthMode.signUp)
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppConstants.margin),
              color: AppConstants.backgroundColor,
              child: Form(
                key: _formSignUpKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'Nombre',
                      controller: _nameController,
                    ),
                    const SizedBox(height: AppConstants.margin),
                    CustomTextField(
                      hintText: 'Email',
                      controller: _emailController,
                    ),
                    const SizedBox(height: AppConstants.margin),
                    CustomTextField(
                      hintText: 'Contraseña',
                      controller: _passwordController,
                    ),
                    const SizedBox(height: AppConstants.margin),
                    CustomTextField(
                      hintText: 'Confirmar contraseña',
                      controller: _confirmPasswordController,
                    ),
                    const SizedBox(height: AppConstants.margin),
                    CustomElevatedButton(
                      onPressed: () {
                        if (_formSignUpKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Processing Data'),
                            ),
                          );
                        }
                      },
                      text: 'Registrarse',
                    ),
                    const SizedBox(height: AppConstants.margin)
                  ],
                ),
              ),
            ),
          const SizedBox(height: AppConstants.margin),
          ListTile(
            title: const Text('Iniciar sesión'),
            tileColor: _authMode == AuthMode.signIn
                ? AppConstants.backgroundColor
                : AppConstants.greyBackgroundColor,
            leading: Radio(
              activeColor: AppConstants.primaryColor,
              value: AuthMode.signIn,
              groupValue: _authMode,
              onChanged: (AuthMode? value) {
                setState(() {
                  _authMode = value!;
                });
              },
            ),
          ),
          if (_authMode == AuthMode.signIn)
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppConstants.margin),
              color: AppConstants.backgroundColor,
              child: Form(
                key: _formSignInKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'Email',
                      controller: _emailController,
                    ),
                    const SizedBox(height: AppConstants.margin),
                    CustomTextField(
                      hintText: 'Contraseña',
                      controller: _passwordController,
                    ),
                    const SizedBox(height: AppConstants.margin),
                    CustomElevatedButton(
                      onPressed: () {
                        if (_formSignInKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Processing Data'),
                            ),
                          );
                        }
                      },
                      text: 'Iniciar sesión',
                    ),
                    const SizedBox(height: AppConstants.margin)
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
