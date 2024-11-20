import 'package:bloc/bloc.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_event.dart';
import 'package:zeit_erfassung/authentication/blocs/auth_repository.dart';
import 'package:zeit_erfassung/authentication/entities/user.dart';
import 'package:zeit_erfassung/authentication/states/auth_state.dart';

/// BLOC for handling authentication.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static final _logger = const Logger('AuthBloc', true);

  /// Repository for authentication process.
  final AuthRepository authRepository;

  /// BLOC for handling authentication.
  AuthBloc({required this.authRepository}) : super(_getInitialState(authRepository.getUser())) {
    // When the user signed up or requests another confirmation email, start
    // the proces and then do not send anything new.
    on<ConfirmationEmailRequested>((event, emit) async {
      _logger('Reacting to the confirmation email request', 'constructor');
      emit(AuthenticationLoading());
      try {
        _logger('Trying to reach repo', 'constructor');
        await authRepository.sendConfirmationEmail();
        emit(UnAuthenticated());
      } catch (e) {
        _logger('Undefined error: $e', 'constructor');
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
    // When User Presses the Google Login Button, we will send the GoogleSignInRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<GoogleSignInRequested>((event, emit) async {
      _logger('Reacting to GoogleSignInRequested', 'constructor');
      emit(AuthenticationLoading());
      try {
        _logger('Trying to reach repo', 'constructor');
        final user = await authRepository.signInWithGoogle();
        if (user == null) {
          _logger('User is null', 'constructor');
          emit(AuthError('user is Null'));
        } else {
          _logger('User is authenticated', 'constructor');
          emit(Authenticated(user));
        }
      } catch (e) {
        _logger('Undefined error: $e', 'constructor');
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
    // When the requests a password reset, start the process of sending out the email
    // and send the user back to unauthenticated state (back to login screen).
    on<PasswordResetRequested>((event, emit) async {
      _logger('Reacting to the password reset request', 'constructor');
      emit(AuthenticationLoading());
      try {
        _logger('Trying to reach repo', 'constructor');
        await authRepository.sendPasswordResetEmail(email: event.email);
        _logger('Emitting UnAuthenticated status after repo answer', 'constructor');
        emit(UnAuthenticated());
      } catch (e) {
        _logger('Undefined error: $e', 'constructor');
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
    // When User Presses the SignIn Button, we will send the SignInRequested Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<SignInRequested>((event, emit) async {
      _logger('Reacting to SignInRequested', 'constructor');
      emit(AuthenticationLoading());
      try {
        _logger('Trying to reach repo', 'constructor');
        final user = await authRepository.signIn(email: event.email, password: event.password);
        if (user == null) {
          _logger('User is null', 'constructor');
          emit(AuthError('user is Null'));
        } else if (user is UnverifiedUser) {
          _logger('User is unverified', 'constructor');
          emit(UnverifiedAuthentication(user));
        } else {
          _logger('User is authenticated', 'constructor');
          emit(Authenticated(user));
        }
      } catch (e) {
        _logger('Undefined error: $e', 'constructor');
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
    // When User Presses the SignOut Button, we will send the SignOutRequested Event to the AuthBloc to handle it and emit the UnAuthenticated State
    on<SignOutRequested>((event, emit) async {
      _logger('Reacting to GoogleSignInRequested', 'constructor');
      emit(AuthenticationLoading());
      await authRepository.signOut();
      _logger('User is logged off', 'constructor');
      emit(UnAuthenticated());
    });
    // When User Presses the SignUp Button, we will send the SignUpRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<SignUpRequested>(
      (event, emit) async {
        _logger('Reacting to SignUpRequested', 'constructor');
        emit(AuthenticationLoading());
        try {
          _logger('Trying to reach repo', 'constructor');
          final user = await authRepository.signUp(email: event.email, password: event.password);
          if (user == null) {
            _logger('User is null', 'constructor');
            emit(AuthError('user is Null'));
            emit(UnAuthenticated());
          } else {
            _logger('User is authenticated but not yet verified', 'constructor');
            await authRepository.sendConfirmationEmail();
            emit(UnverifiedAuthentication(user));
          }
        } catch (e) {
          _logger('Undefined error: $e', 'constructor');
          emit(AuthError(e.toString()));
          emit(UnAuthenticated());
        }
      },
    );
  }

  static AuthState _getInitialState(User user) {
    if (user == User.empty) {
      return UnAuthenticated();
    } else if (user is UnverifiedUser) {
      return UnverifiedAuthentication(user);
    } else {
      return Authenticated(user);
    }
  }
}
