import 'dart:io';
import 'user.dart';

// Funktion zum Text erstellen/ Text Eingabe für Profil
void createProfile() {
  stdout.write("Gib deinen Benutzernamen ein, um dein Profil zu erstellen: ");
  String? username = stdin.readLineSync();
//Benutzername und Passwort Abfrage
  if (username == null || !userDatabase.containsKey(username)) {
    print("Benutzername existiert nicht. Bitte registriere dich zuerst.");
    return;
  }

  stdout.write("Gib eine kurze Beschreibung für dein Profil ein: ");
  String? profile = stdin.readLineSync();

  if (profile == null || profile.isEmpty) {
    print("Profilbeschreibung darf nicht leer sein.");
    return;
  }

  userDatabase[username]?.profile = profile;
  print("Profil für $username erfolgreich erstellt!");
}
