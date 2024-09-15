import 'dart:io';

// Klasse für Benutzer
class User {
  String username;
  String password;
  String? profile; // Optionales Profil

  User(this.username, this.password, {this.profile});
}

// Datenbank für Benutzer
Map<String, User> userDatabase = {};

void register() {
  stdout.write("Gib deinen Benutzernamen ein: ");
  String? username = stdin.readLineSync();

  if (username == null || username.isEmpty) {
    print("Benutzername darf nicht leer sein.");
    return;
  }

  if (userDatabase.containsKey(username)) {
    print("Dieser Benutzername ist bereits vergeben.");
    return;
  }

  stdout.write("Gib dein Passwort ein: ");
  String? password = stdin.readLineSync();

  if (password == null || password.isEmpty) {
    print("Passwort darf nicht leer sein.");
    return;
  }

  // Benutzer erstellen und in der Datenbank speichern
  userDatabase[username] = User(username, password);
  print("Registrierung erfolgreich!");
}

void login() {
  stdout.write("Gib deinen Benutzernamen ein: ");
  String? username = stdin.readLineSync();

  if (username == null || !userDatabase.containsKey(username)) {
    print("Benutzername existiert nicht.");
    return;
  }

  stdout.write("Gib dein Passwort ein: ");
  String? password = stdin.readLineSync();

  if (password == userDatabase[username]?.password) {
    print("Login erfolgreich! Willkommen, $username.");
  } else {
    print("Falsches Passwort.");
  }
}
