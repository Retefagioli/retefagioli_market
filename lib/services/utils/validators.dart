String? checkEmail(String? email) {
  final RegExp emailExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  if (email == null || email.isEmpty) return "Inserisci la mail";
  if (!emailExp.hasMatch(email)) return "Email non valida";
    return null;
}

String? checkLoginPassword(String? password) {
  if (password == null || password.isEmpty) return "Inserisci la password"; 
  return null;
}

String? checkRegistrationPassword(String? password) {
  if (password == null || password.isEmpty) return "Inserisci la password"; 
  if (password.length < 8) return "La password deve essere lunga almeno 8 caratteri";
  final RegExp pwdStrength = RegExp(r"((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]))");
  if (!pwdStrength.hasMatch(password)) return "La password deve contenere almeno una maiuscola, un numero e un carattere speciale";
  return null;
}

String? checkUsername(String? username) {
  if (username == null || username.isEmpty) return "Inserisci lo username";
  if (username.length < 6) return "Lo username deve essere lungo almeno 6 caratteri";
  return null;
}