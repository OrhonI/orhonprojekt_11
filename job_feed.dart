// Simulierter Feed mit Stellenausschreibungen
List<String> jobFeed = [
  "Softwareentwickler (m/w/d) gesucht",
  "Appakademie Dozent (m/w/d) in Berlin",
  "Frontend-Entwickler (m/w/d) - Remote",
];

void showJobFeed() {
  print("\n--- Stellenausschreibungen ---");
  for (var job in jobFeed) {
    print("- $job");
  }
  print("-----------------------------");
}
