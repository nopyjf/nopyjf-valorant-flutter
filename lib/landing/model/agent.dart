import 'package:equatable/equatable.dart';

class Agent extends Equatable {
  final int? status;
  final List<AgentData>? data;
  final String? error;

  const Agent({
    required this.status,
    required this.data,
    required this.error,
  });

  Agent.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        data = (json['data'] as List)
            .map((agent) => AgentData.fromJson(agent))
            .toList(),
        error = json['error'];

  @override
  List<Object?> get props => [status, data, error];
}

class AgentData extends Equatable {
  final String? uuid;
  final String? displayName;
  final String? description;
  final String? displayIcon;
  final Role? role;
  final List<Ability>? abilities;

  AgentData.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'],
        displayName = json['displayName'],
        description = json['description'],
        displayIcon = json['displayIcon'],
        role = json['role'] != null ? Role.fromJson(json['role']) : null,
        abilities = json['abilities'] != null
            ? (json['abilities'] as List)
                .map((ability) => Ability.fromJson(json))
                .toList()
            : null;

  @override
  List<Object?> get props =>
      [uuid, displayName, description, displayIcon, role, abilities];
}

class Role extends Equatable {
  final String? uuid;
  final String? displayName;
  final String? description;
  final String? displayIcon;

  Role.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'],
        displayName = json['displayName'],
        description = json['description'],
        displayIcon = json['displayIcon'];

  @override
  List<Object?> get props => [uuid, displayName, description, displayIcon];
}

class Ability extends Equatable {
  final String? displayName;
  final String? description;
  final String? displayIcon;

  Ability.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        description = json['description'],
        displayIcon = json['displayIcon'];

  @override
  List<Object?> get props => [displayName, description, displayIcon];
}
