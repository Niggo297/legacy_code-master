import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zeit_erfassung/_general/helpers/logger.dart';
import 'package:zeit_erfassung/authentication/entities/user.dart' as cdemy;

/// Repository for authentication that communicates with Firebase
class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  static final _logger = const Logger('AuthRepository', true);

  /// Signing up with email and password.
  /// - [email] The email of the user
  /// - [password] The password of the user
  /// Returns the [] object of the newly created account if successful.
  Future<cdemy.User?> signUp(
      {required String email, required String password}) async {
    try {
      _logger('Trying to create user with email and passwort', 'signUp');
      final uc = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      _logger('Succeeded with firebase, trying to return the cdemy user.',
          'signUp');
      return _cdemyUserMapper(uc.user);
    } on FirebaseAuthException catch (e) {
      _logger('Received error: $e', 'signUp');
      if (e.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return null;
  }

  /// Signing in with email and password.
  /// - [email] The email of the user
  /// - [password] The password of the user
  /// Returns the [] object of the signed in account if successful.
  Future<cdemy.User?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      _logger('Trying to sign in with email and passwort', 'signIn');
      final uc = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      _logger('Succeeded with firebase, trying to return the cdemy user.',
          'signIn');
      return _cdemyUserMapper(uc.user);
    } on FirebaseAuthException catch (e) {
      _logger('Received error: $e', 'signIn');
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      }
    }
    return null;
  }

  /// Signing in with Google.
  /// The signing in process is handled by Google.
  /// Returns the [] object of the signed in account if successful.
  Future<cdemy.User?> signInWithGoogle() async {
    try {
      _logger('Trying to sign in with Google', 'signInWithGoogle');
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final uc = await FirebaseAuth.instance.signInWithCredential(credential);
      _logger('Succeeded. Trying to return user.', 'signInWithGoogle');
      return _cdemyUserMapper(uc.user);
    } catch (e) {
      _logger('Received error: $e', 'signInWithGoogle');
      throw Exception(e.toString());
    }
  }

  /// Sign out the user.
  Future<void> signOut() async {
    try {
      _logger('Trying to sign out', 'signOut');
      await _firebaseAuth.signOut();
      _logger('Succeded', 'signOut');
    } catch (e) {
      _logger('Received error: $e', 'signOut');
      throw Exception(e);
    }
  }

  /// Get the currently active user, according to Firebase.
  cdemy.User getUser() => _cdemyUserMapper(_firebaseAuth.currentUser);

  /// Convert a Firebase-User to a cdemy-User
  cdemy.User _cdemyUserMapper(firebaseUser) {
    if (firebaseUser == null || firebaseUser.isAnonymous) {
      return cdemy.User.empty;
    }
    if (!firebaseUser.emailVerified) {
      return cdemy.UnverifiedUser(
        uid: firebaseUser.uid,
        email: firebaseUser.email,
        name: firebaseUser.displayName,
        photoUrl: firebaseUser.photoURL,
      );
    }
    return cdemy.User(
      uid: firebaseUser.uid,
      email: firebaseUser.email,
      name: firebaseUser.displayName,
      photoUrl: firebaseUser.photoURL,
    );
  }

  /// Send a verification email to the user.
  Future<void> sendConfirmationEmail() async {
    _logger('Trying to send confirmtion email', 'sendConfirmationEmail');
    final firebaseUser = FirebaseAuth.instance.currentUser;
    try {
      if (firebaseUser != null && !firebaseUser.emailVerified) {
        await firebaseUser.sendEmailVerification();
        _logger('Verification email sent', 'sendConfirmationEmail');
      } else {
        throw Exception('User is null');
      }
    } catch (e) {
      _logger('Undefined error: $e', 'sendConfirmationEmail');
      throw Exception('$e');
    }
  }

  /// Send an email to the user with a reset password link.
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    try {
      _logger('Trying to send password reset email', 'sendPasswordResetEmail');
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      _logger('Succeeded with firebase.', 'sendPasswordResetEmail');
    } on FirebaseAuthException catch (e) {
      _logger('Received error: $e', 'signIn');
      throw Exception('$e');
    }
  }
}
