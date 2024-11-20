import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:zeit_erfassung/_general/bloc_observer.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/_general/helpers/theme.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_bloc.dart';
import 'package:zeit_erfassung/abrechnung/blocs/abrechnung_event.dart';
import 'package:zeit_erfassung/abrechnung/states/abrechnung_state.dart';
import 'package:zeit_erfassung/abrechnung/views/home_view/home_view.dart';
import 'package:zeit_erfassung/abrechnung/views/kunden_view/kunden_view.dart';
import 'package:zeit_erfassung/abrechnung/views/placeholder_view/placeholder_view.dart';
import 'package:zeit_erfassung/abrechnung/views/taetigkeiten_view/taetigkeiten_view.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_bloc.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_repository.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';
import 'package:zeit_erfassung/authentication/views/email_confirmation_view/email_confirmation_view.dart';
import 'package:zeit_erfassung/authentication/views/password_reset_view/password_reset_view.dart';
import 'package:zeit_erfassung/authentication/views/sign_in_view/sign_in_view.dart';
import 'package:zeit_erfassung/authentication/views/sign_up_view/sign_up_view.dart';
import 'package:zeit_erfassung/services/local_storage_repository.dart';

// import 'package:zeit_erfassung/helpers/logger.dart';

import 'firebase_options.dart';

void main() async {
  Intl.defaultLocale = 'de_DE';
  await initializeDateFormatting();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(() {
    runApp(const MyApp());
  }, blocObserver: CustomBlocObserver());
}

/// The main application.
class MyApp extends StatelessWidget {
  static final _logger = const Logger('MyApp', true);

  /// Creates the main application
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuthRepository>(create: (context) => AuthRepository()),
          RepositoryProvider<LocalStorageRepository>(create: (context) => LocalStorageRepository()),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AbrechnungBloc>(
              create: (context) => AbrechnungBloc(
                localStorageRepository: RepositoryProvider.of<LocalStorageRepository>(context),
              ),
            ),
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                authRepository: RepositoryProvider.of<AuthRepository>(context),
              ),
            ),
          ],
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, authState) {
              final initialRoute = authState.maybeWhen<String>(
                unverified: (_) => EmailConfirmationView.routeName,
                unauthenticated: () => SignInView.routeName,
                orElse: () => HomeView.routeName,
              );
              // We attach a listener to the AuthBloc. Its goal is to load the
              // state for AbrechnungBloc once a user has logged in
              final abrechnungBloc = BlocProvider.of<AbrechnungBloc>(context);
              final authBloc = BlocProvider.of<AuthBloc>(context);
              if (authState is Authenticated) {
                if (abrechnungBloc.state is AbrechnungInitial) {
                  // We restarted with restored AuthState
                  _logger('Restarted with restored AuthState', 'main');
                  abrechnungBloc.add(const LoadState());
                }
              }
              authBloc.stream.listen((authState) {
                _logger('New auth state: $authState', 'main-closure');
                final abrechnungBloc = BlocProvider.of<AbrechnungBloc>(context);
                if (authState is Authenticated) {
                  if (abrechnungBloc.state is AbrechnungInitial) {
                    // We restarted with restored AuthState
                    _logger('Just logged in', 'main-closure');
                    abrechnungBloc.add(const LoadState());
                  }
                }
              });
              return MaterialApp(
                title: 'Flutter Demo',
                theme: themeData,
                initialRoute: initialRoute,
                routes: {
                  HomeView.routeName: (context) => HomeView(),
                  EmailConfirmationView.routeName: (context) => const EmailConfirmationView(),
                  KundenView.routeName: (context) => const KundenView(),
                  PasswordResetView.routeName: (context) => const PasswordResetView(),
                  PlaceholderView.routeName: (context) => const PlaceholderView(),
                  SignInView.routeName: (context) => const SignInView(),
                  SignUpView.routeName: (context) => const SignUpView(),
                  TaetigkeitenView.routeName: (context) => const TaetigkeitenView(),
                },
              );
            },
          ),
        ),
      );
}
