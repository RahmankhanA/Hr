import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id;
  final String? name;
  final double? experience;
  final int? jobMatch;
  final String? location;
  final String? function;
  final String? urlAvatar;

  const User({
    this.id,
    this.name,
    this.experience,
    this.jobMatch,
    this.location,
    this.function,
    this.urlAvatar,
  });

  factory User.fromMap(Map<String, dynamic> data) => User(
        id: data['id'] as String?,
        name: data['name'] as String?,
        experience: (data['experience'] as num?)?.toDouble(),
        jobMatch: data['jobMatch'] as int?,
        location: data['location'] as String?,
        function: data['function'] as String?,
        urlAvatar: data['urlAvatar'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'experience': experience,
        'jobMatch': jobMatch,
        'location': location,
        'function': function,
        'urlAvatar': urlAvatar,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toMap());

  User copyWith({
    String? id,
    String? name,
    double? experience,
    int? jobMatch,
    String? location,
    String? function,
    String? urlAvatar,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      experience: experience ?? this.experience,
      jobMatch: jobMatch ?? this.jobMatch,
      location: location ?? this.location,
      function: function ?? this.function,
      urlAvatar: urlAvatar ?? this.urlAvatar,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      experience,
      jobMatch,
      location,
      function,
      urlAvatar,
    ];
  }
}
