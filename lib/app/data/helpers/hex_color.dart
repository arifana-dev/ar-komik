import 'dart:ui';

extension HexColor on Color {
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) =>
      '${leadingHashSign ? '#' : ''}'
      '${a.toStringAsFixed(16).padLeft(2, '0')}'
      '${r.toStringAsFixed(16).padLeft(2, '0')}'
      '${g.toStringAsFixed(16).padLeft(2, '0')}'
      '${b.toStringAsFixed(16).padLeft(2, '0')}';

  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
