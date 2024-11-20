import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taetigkeit.freezed.dart';
part 'taetigkeit.g.dart';

@freezed

/// Class representing a Taetigkeit, which is a certain kind of work that is
/// done for a customer / project and is paid seperately from any wages.
class Taetigkeit with _$Taetigkeit {
  /// Constructs a Taetigkeit object
  const factory Taetigkeit({
    required String name,
    required int kostensatz,
  }) = _Taetigkeit;

  /// Constructs a Taetigkeit object from a JSON data map
  factory Taetigkeit.fromJson(Map<String, dynamic> json) => _$TaetigkeitFromJson(json);

  const Taetigkeit._();
}
