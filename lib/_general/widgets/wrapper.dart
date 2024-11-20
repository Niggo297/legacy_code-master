import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zeit_erfassung/_general/helpers/constants.dart';
import 'package:zeit_erfassung/_general/helpers/functions.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/abrechnung/views/home_view/home_view.dart';
import 'package:zeit_erfassung/abrechnung/views/kunden_view/kunden_view.dart';
import 'package:zeit_erfassung/abrechnung/views/taetigkeiten_view/taetigkeiten_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_event.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
import 'package:zeit_erfassung/authentication/views/email_confirmation_view/email_confirmation_view.dart';
import 'package:zeit_erfassung/authentication/views/sign_in_view/sign_in_view.dart';

/// Widget wrapping all content in a scaffold, including our drawer.
class Wrapper extends StatelessWidget {
  /// Widget wrapping all content in a scaffold, including our drawer.
  /// - body: the content to be wrapped
  /// - title: The title in the AppBar
  /// - bottomNavigationBar: The bottom navigation bar
  /// - floatingActionButton: The floating action button
  /// - floatingActionButtonLocation: The location of the floating action button
  /// - key: The widget key
  const Wrapper({
    required this.body,
    required this.title,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    Key? key,
  }) : super(key: key);

  static final _logger = const Logger('Wrapper', false);

  /// The title to show in the AppBar
  final String title;

  /// The content to be wrapped
  final Widget body;

  /// The floating action button
  final Widget? floatingActionButton;

  /// The location of the floating action button
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// The bottom navigation bar
  final BottomNavigationBar? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context)?.settings.name;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          loading: () {},
          unverified: (user) {
            _logger('Rerouting to EmailConfirmationView: build');
            Navigator.of(context)
                .pushReplacementNamed(EmailConfirmationView.routeName);
          },
          authenticated: (user) {},
          unauthenticated: () {
            _logger('Rerouting to EmailConfirmationView: build');
            Navigator.of(context).pushReplacementNamed(SignInView.routeName);
          },
          authError: (e) {
            _logger('Showing Snackbar because of error');
            F.showCustomSnackbar(
              'Fehler beim Authentifizieren: $e',
              backgroundColor: Colors.red,
              textColor: Colors.yellow,
              context: context,
            );
          },
        );
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          _logger('Route: $route', 'build');
          _logger('User: $state', 'build');
          return Scaffold(
            appBar: AppBar(
              backgroundColor: layColorPrimary,
              foregroundColor: Colors.white,
              title: Text(title),
            ),
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            bottomNavigationBar: bottomNavigationBar,
            drawer: Drawer(
              backgroundColor: Colors.green.shade200,
              elevation: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Material(
                      elevation: 3,
                      child: Container(
                        height: AppBar().preferredSize.height +
                            MediaQuery.of(context).padding.top,
                        width: double.infinity,
                        color: Colors.green.shade800,
                        padding: const EdgeInsets.fromLTRB(12, 8, 16, 8),
                        child: const FittedBox(
                          child: Text(
                            'Menü',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('Heute'),
                      leading: const Icon(Icons.calendar_today),
                      selected: route == HomeView.routeName,
                      selectedColor: Colors.white,
                      selectedTileColor: Colors.green.shade600,
                      onTap: () {
                        _logger('Rerouting to HomeView: build');
                        Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(
                            context, HomeView.routeName, (route) => false);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.receipt_outlined),
                      title: const Text('Abrechnung'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_month_outlined),
                      title: const Text('Tätigkeiten'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(TaetigkeitenView.routeName);
                      },
                    ),
                    ListTile(
                      leading: const Icon(MaterialIcons.attach_money),
                      title: const Text('Kunden'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).pushNamed(KundenView.routeName);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.archive_outlined),
                      title: const Text('Archiv'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings_outlined),
                      title: const Text('Einstellungen'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Logout'),
                      onTap: () {
                        Navigator.pop(context);
                        context.read<AuthBloc>().add(SignOutRequested());
                      },
                    ),
                  ],
                ),
              ),
            ),
            body: body,
          );
        },
      ),
    );
  }
}
