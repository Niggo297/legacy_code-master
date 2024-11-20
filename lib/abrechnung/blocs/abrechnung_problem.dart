/// Base class for all problems that can occur wihile interacting with the Abrechnung
abstract class AbrechnungProblem implements Exception {
  /// The message to display to the user if this problem occurs.
  String get message;
}

/// Represents a problem that occurs because the Einsatz was already started
class EinsatzAlreadyStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Tätigkeit wurde bereits gestartet.';
}

// ignore: public_member_api_docs
class EinsatzNotDefined implements AbrechnungProblem {
  @override
  String get message => 'Es wurde kein Einsatz angegeben.';
}

/// Represents a problem that occurs because the Taetigkeit did not end yet.
class EinsatzNotYetEndedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Tätigkeit wurde noch nicht beendet.';
}

/// Represents a problem that occurs because the Taetigkeit did not start yet.
class EinsatzNotYetStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Tätigkeit wurde noch nicht gestartet.';
}

/// Represents the problem of a Fahrt that did not end yet.
class FahrtNotYetEndedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Fahrt wurde noch nicht beendet.';
}

/// Represents a problem that occurs because a Fahrt did not end yet.
class FahrtNotYetStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Fahrt wurde noch nicht gestartet.';
}

/// Represents a problem that occurs because a Kunde anlready existed
class KundeAlreadyExistingProblem implements AbrechnungProblem {
  @override
  String get message => 'Der Kunde ist bereits vorhanden.';
}

/// Represents a problem that occurs because the Kund was already existing.
class KundeAlreadyUsedProblem implements AbrechnungProblem {
  @override
  String get message =>
      'Der Kunde wurde bereits verwendet in dieser Abrechnungsperiode. Starten Sie eine neue und entfernen Sie den Kunden dort.';
}

/// Represents a problem that occurs because the abwTaetigkeit was not found.
class KundeDoesNotHaveAbwTaetigkeitProblem implements AbrechnungProblem {
  @override
  String get message => 'Der Kunde hat die abweichende Tätigkeit nicht.';
}

/// Represents a problem that occurs because the Kunde was not found.
class KundeNotExistingProblem implements AbrechnungProblem {
  @override
  String get message => 'Der Kunde existiert nicht.';
}

/// Represents a problem that occurs because a Pause was already started.
class PauseAlreadyStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Pause wurde bereits gestartet.';
}

/// Represents a problem that occurs because the pause did not end yet.
class PauseNotYetEndedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Pause wurde noch nicht beendet.';
}

/// Represents a problem that occurs because a pause did not start yet.
class PauseNotYetStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Pause wurde noch nicht gestartet.';
}

/// Represents a problem that occurs because the Schicht already ended.
class SchichtAlreadyEndedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Schicht wurde bereits beendet.';
}

/// Represents a problem that occurs because the Schicht already started.
class SchichtAlreadyStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Schicht wurde bereits gestartet.';
}

// ignore: public_member_api_docs
class SchichtNotYetStartedProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Schicht wurde noch nicht gestartet.';
}

// ignore: public_member_api_docs
class StateCannotBeLoaded implements AbrechnungProblem {
  @override
  String get message => 'Der State konnte nicht geladen werden.';
}

/// Represents a problem that occurs because the Taetigkeit already existed.
class TaetigkeitAlreadyExistingProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Tätigkeit ist bereits vorhanden.';
}

/// Represents a problem that occurs because the Taetigkeit is still in use.
class TaetigkeitAlreadyUsedProblem implements AbrechnungProblem {
  @override
  String get message =>
      'Die Tätigkeit wurde bereits verwendet in dieser Abrechnungsperiode. Starten Sie eine neue und entfernen Sie die Tätigkeit dort.';
}

/// Represents a problem that occurs because the Taetigkeit was not found.
class TaetigkeitNotExistingProblem implements AbrechnungProblem {
  @override
  String get message => 'Die Tätigkeit ist nicht vorhanden.';
}
