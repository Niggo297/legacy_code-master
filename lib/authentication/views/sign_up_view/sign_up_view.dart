import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zeit_erfassung/_general/helpers/constants.dart';
import 'package:zeit_erfassung/abrechnung/views/home_view/home_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_event.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
import 'package:zeit_erfassung/authentication/views/email_confirmation_view/email_confirmation_view.dart';
import 'package:zeit_erfassung/authentication/views/sign_in_view/sign_in_view.dart';
// import 'package:zeit_erfassung/helpers/logger.dart';

/// Page on which the user can create a new account
class SignUpView extends StatefulWidget {
  // static final _logger = const Logger('SignUpView', false);
  /// Route to this page
  static const routeName = '/signup';

  /// Creates the page to create a new account
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              unverified: (u) {
                Navigator.pushReplacementNamed(
                    context, EmailConfirmationView.routeName);
              },
              authenticated: (u) {
                Navigator.pushReplacementNamed(context, HomeView.routeName);
              },
              authError: (e) {
                // Showing the error message if the user has entered invalid credentials
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'Registrierung hat nicht funktioniert ($e)',
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  duration: const Duration(seconds: 5),
                ));
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            if (state is AuthenticationLoading) {
              // Displaying the loading indicator while the user is signing up
              return const Center(child: CircularProgressIndicator());
            }
            if (state is UnAuthenticated) {
              // Displaying the sign up form if the user is not authenticated
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 36,
                        ),
                        const Text(
                          'Registrieren',
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
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) => value != null &&
                                        !EmailValidator.validate(value)
                                    ? 'Enter a valid email'
                                    : null,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    value != null && value.length < 6
                                        ? 'Enter min. 6 characters'
                                        : null,
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
                                    _createAccountWithEmailAndPassword(context);
                                  },
                                  child: const Text(
                                    'Konto erstellen',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('oder'),
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
                              _authenticateWithGoogle(context);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(AntDesign.google),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Registrieren mit Google',
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
                        const Text('Sie haben schon ein Konto?'),
                        const SizedBox(
                          height: 12,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInView()),
                            );
                          },
                          child: const Text('Sign In'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      );

  void _createAccountWithEmailAndPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignUpRequested(
          _emailController.text,
          _passwordController.text,
        ),
      );
    }
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}
