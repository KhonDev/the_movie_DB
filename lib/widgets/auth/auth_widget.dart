import 'package:flutter/material.dart';
import 'package:movie_db_project/theme/app_button_style.dart';
import 'package:movie_db_project/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16.0, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 25.0),
          const _FormWidget(),
          const SizedBox(height: 25.0),
          const Text('sadsadasdsad click here', style: textStyle),
          const SizedBox(height: 5.0),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Register'),
          ),
          const SizedBox(height: 25.0),
          const Text('sadsadasdsad click here', style: textStyle),
          const SizedBox(height: 5.0),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Varify email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  __FormWidgetState createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

  void _auth() {
    final login = _passwordTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Login or password is false';
      print('error');
    }
    setState(() {});
  }

  void _resetPassword() {
    debugPrint('pasword');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16.0, color: Color(0xff212529));
    const textFieldDecoretion = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      isCollapsed: true,
    );
    const color = Color(0xff01b4f4);
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (errorText != null) ...[
          Text(
            errorText,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 17.0,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
        const Text('Username', style: textStyle),
        const SizedBox(height: 5.0),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoretion,
        ),
        const SizedBox(height: 20.0),
        const Text('Password', style: textStyle),
        const SizedBox(height: 5.0),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecoretion,
          obscureText: true,
        ),
        const SizedBox(height: 25.0),
        Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: _auth,
              child: const Text('Login'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 8.0,
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: 30.0),
            TextButton(
                onPressed: _resetPassword,
                child: const Text(
                  'Reset Password',
                ),
                style: AppButtonStyle.linkButton),
          ],
        )
      ],
    );
  }
}
