import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target_test_flutter/src/core/helpers/size_extensions.dart';

import '../../../mobx/login_base.dart';

import 'login_button_component.dart';
import 'login_user_input_component.dart';
import 'login_error_menssage_component.dart';
import 'login_password_input_component.dart';

class LoginFormComponent extends StatefulWidget {
  const LoginFormComponent({super.key});

  @override
  State<LoginFormComponent> createState() => _LoginFormComponentState();
}

class _LoginFormComponentState extends State<LoginFormComponent> {
  final LoginBase _loginBase = LoginBase();

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _userEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();

  @override
  void initState() {
    
    reaction((_) => _loginBase.state, (_) { 

      if (_loginBase.state == Status.success) {
        Navigator.pushNamed(context, '/home');
      }
    
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Observer(
        builder: (_) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: context.percentWidth(0.11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginUserInputComponent(userEditingController: _userEditingController),
                const SizedBox(height: 20.0),
                LoginPasswordInputComponent(passwordEditingController: _passwordEditingController),
                _loginBase.state == Status.failure 
                  ? const LoginErrorMenssageComponent()
                  : const SizedBox.shrink(),
                const SizedBox(height: 32.0),
                _loginBase.state == Status.loading 
                  ? const CircularProgressIndicator()                
                  : LoginButtonComponent(
                    buttonText: 'Entrar',
                    onPressed: () {
                      if (_loginFormKey.currentState!.validate()) {

                        _loginBase.signInUser(username: _userEditingController.text, password: _passwordEditingController.text);
                        _userEditingController.clear();
                        _passwordEditingController.clear();
                        
                      }
                    },
                  ),
              ],
            ),
          );
      }),
    );
  }
}
