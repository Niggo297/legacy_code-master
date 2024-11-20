import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/widgets/confirmation_dialog.dart';
import 'package:zeit_erfassung/abrechnung/views/home_view/home_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_event.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
import 'package:zeit_erfassung/authentication/views/sign_in_view/sign_in_view.dart';

/// The page to display if the user is logged in but his email adress is not
/// verified yet. The user can initiate the resending of a verification email.
class EmailConfirmationView extends StatelessWidget {
  /// Named route for this page.
  static const routeName = '/email_confirmation';
  static final _logger = const Logger('EmailConfirmationView', true);

  /// Creates the page to display if the user is logged in but his email adress is not
  /// verified yet. The user can initiate the resending of a verification email.
  const EmailConfirmationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              unauthenticated: () {
                Navigator.pushReplacementNamed(context, SignInView.routeName);
              },
              authenticated: (u) {
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
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final email =
                  state is Authenticated ? state.user.email! : '(unbekannt)';
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 36),
                      const Text(
                        'Emailbestätigung',
                        style: TextStyle(fontSize: 36),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Sie müssen Ihren Account bei uns noch bestätigen. Zu diesem Zweck haben wir eine Bestätigungsmail an Ihre E-Mail-Adresse gesendet. Bitte klicken Sie auf den Link in der Mail, um Ihren Account zu bestätigen. Prüfen Sie gegebenenfalls Ihren Spam-Ordner.',
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Die Email wurde gesendet an $email. Wenn diese Emailadresse nicht korrekt ist, melden Sie sich bitte ab und registrieren Sie sich neu, diesmal mit der richtigen Emailadresse.',
                      ),
                      const SizedBox(height: 12),
                      const Text(
                          'Oder lassen Sie sich die Email erneut zusenden.'),
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
                            _logger(
                                'Sending of email requested', 'build-closure');
                            final response = await showDialog<bool>(
                                context: context,
                                builder: (context) => const ConfirmationDialog(
                                        title: 'Emailversand',
                                        messages: [
                                          'Wenn Sie diese Frage bestätigen, dann wird Ihnen umgehend eine neue Email zugesendet und Sie landen wieder auf dem Anmelde-Bildschirm.',
                                          'Dort können Sie sich dann mit Ihrem neuen Passwort einloggen.',
                                          'Wollen Sie eine Passwort-Reset-Email zugesendet bekommen?'
                                        ]));
                            if (response ?? false) {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(ConfirmationEmailRequested());
                            }
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.email_outlined),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Email erneut versenden',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                          onPressed: () {
                            _logger(
                                'Signout requested. Navigating back to SignInView',
                                'build-closure');
                            BlocProvider.of<AuthBloc>(context)
                                .add(SignOutRequested());
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.logout_outlined),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Abmelden',
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
