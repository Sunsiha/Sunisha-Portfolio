// String
extension StringExtensions on String {
  bool get isValidEmail => RegExp(
          "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(trim());

  bool isValidName({minLength = 3}) =>
      trim().isNotEmpty && (trim().length >= minLength);
}
