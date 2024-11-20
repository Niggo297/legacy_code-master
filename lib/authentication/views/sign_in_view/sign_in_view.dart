import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zeit_erfassung/_general/helpers/constants.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/widgets/confirmation_dialog.dart';
import 'package:zeit_erfassung/abrechnung/views/home_view/home_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_event.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
import 'package:zeit_erfassung/authentication/views/email_confirmation_view/email_confirmation_view.dart';
import 'package:zeit_erfassung/authentication/views/password_reset_view/password_reset_view.dart';
import 'package:zeit_erfassung/authentication/views/sign_up_view/sign_up_view.dart';

/// Page on which the user can sign in into his account
class SignInView extends StatefulWidget {
  /// Named route to this page.
  static const routeName = '/signin';

  /// Creates the page to sign in into the account.
  const SignInView({Key? key}) : super(key: key);
  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  static final _logger = const Logger('SignInView', true);
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isTextObscured = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              unverified: (u) {
                _logger('State-induced navigation to EmailConfirmationView',
                    'build-closure');
                Navigator.pushReplacementNamed(
                    context, EmailConfirmationView.routeName);
              },
              authenticated: (u) {
                _logger(
                    'State-induced navigation to HomeView', 'build-closure');
                Navigator.pushReplacementNamed(context, HomeView.routeName);
              },
              authError: (e) {
                // Showing the error message if the user has entered invalid credentials
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'Login hat nicht funktioniert ($e)',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  duration: const Duration(seconds: 5),
                ));
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthenticationLoading) {
                // Showing the loading indicator while the user is signing in
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 36,
                        ),
                        const Text(
                          'Anmelden',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: layColorPrimary),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 5),
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) => value != null &&
                                        !EmailValidator.validate(value)
                                    ? 'Geben Sie eine gültige Emailadresse ein'
                                    : null,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: _passwordController,
                                obscureText: isTextObscured,
                                decoration: InputDecoration(
                                  suffixIcon: MouseRegion(
                                    child: GestureDetector(
                                      child: Icon(
                                        isTextObscured
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.white,
                                      ),
                                      onTap: () {
                                        _logger('Toggled password visibility',
                                            'build-closure');
                                        setState(() {
                                          isTextObscured = !isTextObscured;
                                        });
                                      },
                                    ),
                                  ),
                                  hintText: 'Passwort',
                                  border: const OutlineInputBorder(),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    value != null && value.length < 6
                                        ? 'Mindestens 6 Zeichen'
                                        : null,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                        text: 'Passwort vergessen? ',
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                      text: 'Passwort zurücksetzen',
                                      style: const TextStyle(
                                        color: layColorPrimary,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          _logger(
                                              'User induced: Navigation to PasswordResetView',
                                              'build-closure');
                                          final isConfirmed = await showDialog(
                                            context: context,
                                            builder: (context) =>
                                                const ConfirmationDialog(
                                              title: 'Passwort zurücksetzen',
                                              messages: [
                                                'Möchten Sie eine E-Mail zum Zurücksetzen Ihres Passworts senden?'
                                              ],
                                            ),
                                          );
                                          if (isConfirmed ?? false) {
                                            await Navigator.of(context)
                                                .pushReplacementNamed(
                                                    PasswordResetView
                                                        .routeName);
                                          }
                                        },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        Colors.grey.shade200),
                                    foregroundColor:
                                        WidgetStateProperty.all(Colors.black),
                                  ),
                                  onPressed: () {
                                    _logger(
                                        'User induced: SignIn with email and password',
                                        'build-closure');
                                    _authenticateWithEmailAndPassword(context);
                                  },
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.email_outlined),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'Anmelden mit Account',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('oder'),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade200),
                              foregroundColor:
                                  WidgetStateProperty.all(Colors.black),
                            ),
                            onPressed: () {
                              _logger('User induced: SignIn with Google',
                                  'build-closure');
                              _authenticateWithGoogle(context);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(AntDesign.google),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Anmelden mit Google',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('oder'),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Sie haben noch keinen Account?'),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: OutlinedButton(
                            onPressed: () {
                              _logger('User induced: Navigation to SignUpView',
                                  'build-closure');
                              Navigator.pushReplacementNamed(
                                  context, SignUpView.routeName);
                            },
                            child: const Text('Registrieren'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );

  void _authenticateWithEmailAndPassword(context) {
    if (_formKey.currentState!.validate()) {
      _logger('Form validated - Proceed', '_authenticateWithEmailAndPassword');
      BlocProvider.of<AuthBloc>(context).add(
        SignInRequested(_emailController.text, _passwordController.text),
      );
    } else {
      _logger('Form validation failed', '_authenticateWithEmailAndPassword');
    }
  }

  void _authenticateWithGoogle(context) {
    _logger('Proceed with Google sign in', '_authenticateWithGoogle');
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}
