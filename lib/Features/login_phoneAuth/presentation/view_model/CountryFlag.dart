String generateCountryFlag() {
  String countryCode = countryName[0];
  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
          (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}

List countryName = [
  'eg',
  'us',
  'DZ',
  'CA',
  'FR',
  'DE',
  'SA',
  'TR',
];

List countryCode = [
  'eg',
  'us',
  'DZ',
  'CA',
  'FR',
  'DE',
  'SA',
  'TR',
];