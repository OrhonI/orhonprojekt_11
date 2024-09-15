import 'dart:io';
import 'user.dart';
import 'profile.dart';
import 'job_feed.dart';

// Menü Aufruf
void main() {
  while (true) {
    print("\n--- Menü ---");
    print("1. Registrieren");
    print("2. Einloggen");
    print("3. Profil erstellen");
    print("4. Feed Stellenausschreibungen anzeigen");
    print("5. Beenden");
    stdout.write("Wähle eine Option: ");
// Aufforderung einer Eingabe
    String? choice = stdin.readLineSync();
// Menü Auswahl mit if/else -Abfrage
    if (choice == '1') {
      register();
    } else if (choice == '2') {
      login();
    } else if (choice == '3') {
      createProfile();
    } else if (choice == '4') {
      showJobFeed();
    } else if (choice == '5') {
      print("Programm beendet.");
      break;
    } else {
      print("Ungültige Auswahl. Bitte versuche es erneut.");
    }
  }
}
// Ende
