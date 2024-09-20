import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja Bem-Vindo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                label: 'Email',
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Email inválido!!!';
                  }
                  return null; //tudo ok
                },
                controller: _emailController,
              ),
              CustomTextField(
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida';
                  }
                },
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // logar usuário
                  }
                },
                child: Text('Entrar'),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Registar-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
