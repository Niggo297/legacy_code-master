import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/widgets/confirmation_dialog.dart';
import 'package:zeit_erfassung/abrechnung/views/home_view/home_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_event.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
import 'package:zeit_erfassung/authentication/views/sign_in_view/sign_in_view.dart';

/// Page on which the user can reset his password.
class PasswordResetView extends StatefulWidget {
  /// Route to this page.
  static const routeName = '/password_reset';

  /// Creates the page to reset the password.
  const PasswordResetView({Key? key}) : super(key: key);

  @override
  State<PasswordResetView> createState() => _PasswordResetViewState();
}

class _PasswordResetViewState extends State<PasswordResetView> {
  static final _logger = const Logger('PasswordResetView', true);
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              authenticated: (u) {
                Navigator.pushReplacementNamed(context, HomeView.routeName);
              },
              unauthenticated: () {
                Navigator.pushReplacementNamed(context, SignInView.routeName);
              },
              authError: (e) {
                // Showing the error message if the user has entered invalid credentials
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      'Reset hat nicht funktioniert ($e)',
                      style: const TextStyle(color: Colors.yellow),
                    ),
                    duration: const Duration(seconds: 5),
                  ),
                );
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthenticationLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 36),
                      const Text(
                        'Passwort-Reset',
                        style: TextStyle(fontSize: 36),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Geben Sie Ihre bei uns registrierte Emailadresse ein und bestätigen Sie das Zurücksetzen des Passworts. Sie erhalten dann eine Email mit weiteren Instruktionen.',
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) =>
                            value != null && !EmailValidator.validate(value)
                                ? 'Geben Sie eine gültige Emailadresse ein'
                                : null,
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade200),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.black),
                          ),
                          onPressed: () async {
                            final email = _emailController.text;
                            if (!EmailValidator.validate(email)) {
                              return;
                            }
                            _logger('Reset passworf requested for email $email',
                                'build-closure');

                            final isConfirmed = await showDialog(
                              context: context,
                              builder: (context) => const ConfirmationDialog(
                                title: 'Passwort zurücksetzen',
                                messages: [
                                  'Möchten Sie eine E-Mail zum Zurücksetzen Ihres Passworts senden?'
                                ],
                              ),
                            );
                            if (isConfirmed ?? false) {
                              BlocProvider.of<AuthBloc>(context).add(
                                  PasswordResetRequested(
                                      _emailController.text));
                            }
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.email_outlined),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Passwort zurücksetzen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text('oder'),
                      const SizedBox(height: 12),
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
                            _logger('Navigating back to SignInView',
                                'build-closure');
                            Navigator.of(context)
                                .pushReplacementNamed(SignInView.routeName);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.logout_outlined),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Zurück zum Login',
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
              );
            },
          ),
        ),
      );
}
