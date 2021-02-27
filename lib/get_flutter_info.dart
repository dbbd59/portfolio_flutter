import 'dart:convert' show json;
import 'dart:io' show Process, ProcessResult;

void main() {
  Process.run('flutter', ['--version', '--machine']).then(
    (ProcessResult results) {
      final result = Map<String, Object>.from(
        json.decode(results.stdout.toString()) as Map,
      );
      print(constantDeclarationsFromMap(result, 'kFlutter'));
    },
  );
}

String constantDeclarationsFromMap(Map<String, Object> map,
    [String prefix = 'k']) {
  String _capitalize(String text) =>
      text.isEmpty ? text : "${text[0].toUpperCase()}${text.substring(1)}";

  String _constantName(String name, String prefix) =>
      prefix.isEmpty ? name : prefix + _capitalize(name);

  return map.entries
      .map((e) =>
          'const ${_constantName(e.key, prefix)} = ${json.encode(e.value)};')
      .join('\n');
}
