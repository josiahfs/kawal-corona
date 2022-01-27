import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Initially password is obscure
  bool _obscureText = true;
  bool _obscureText2 = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // Toggles for re-type password form
  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 42),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 90,
                  height: 90,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                'Kawal Corona',
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 43,
              ),
              Text(
                'Register',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff157FFB)),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                'Register to be aware with COVID - 19',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username or email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: _toggle,
                      child: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: 'Password',
                  ),
                  validator: (val) =>
                      val!.length < 6 ? 'Password too short.' : null,
                  onSaved: (val) => _password = val!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: _toggle2,
                      child: Icon(_obscureText2
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: 'Re-type password',
                  ),
                  validator: (val) =>
                      val!.length < 6 ? 'Password too short.' : null,
                  onSaved: (val) => _password = val!,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 220,
                  height: 51,
                  decoration: BoxDecoration(
                      color: Color(0xffCFE3FC),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff0B4E90)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    TextButton(
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0B4E90)),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
