import 'package:floor/floor.dart';

import '../../../../domain/entities/source.dart';

class SourceTypeConverter extends TypeConverter<Source, String> {
  @override
  Source decode(String databaseValue) {
    final List<String> results = databaseValue.split(',') ?? const ['non', 'non'];
    return Source(id: results.first, name: results.last);
  }

  @override
  String encode(Source value) {
    final String result = '${value.id}, ${value.name}';
    return result;
  }
}
