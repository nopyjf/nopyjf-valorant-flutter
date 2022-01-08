import 'package:equatable/equatable.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';

class Agent extends Equatable {
  final int status;
  final List<AgentData>? data;
  final String error;

  const Agent({
    required this.status,
    required this.data,
    required this.error,
  });

  Agent.fromJson(Map<String, dynamic> json)
      : status = json['status'] ?? -1,
        data = (json['data'] as List)
            .map((agent) => AgentData.fromJson(agent))
            .toList(),
        error = json['error'] ?? BaseLine.empty;

  @override
  List<Object?> get props => [status, data, error];
}

class AgentData extends Equatable {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String bustPortrait;
  final Role? role;
  final List<Ability>? abilities;

  static const roleField = 'role';
  static const abilitiesField = 'abilities';

  AgentData.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'] ?? BaseLine.empty,
        displayName = json['displayName'] ?? BaseLine.empty,
        description = json['description'] ?? BaseLine.empty,
        displayIcon = json['displayIcon'] ?? BaseLine.empty,
        bustPortrait = json['bustPortrait'] ?? BaseLine.empty,
        role = json[roleField] != null ? Role.fromJson(json[roleField]) : null,
        abilities = json[abilitiesField] != null
            ? (json[abilitiesField] as List)
                .map((ability) => Ability.fromJson(ability))
                .toList()
            : null;

  @override
  List<Object?> get props =>
      [uuid, displayName, description, displayIcon, role, abilities];
}

class Role extends Equatable {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;

  Role.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'] ?? BaseLine.empty,
        displayName = json['displayName'] ?? BaseLine.empty,
        description = json['description'] ?? BaseLine.empty,
        displayIcon = json['displayIcon'] ?? BaseLine.empty;

  @override
  List<Object?> get props => [uuid, displayName, description, displayIcon];
}

class Ability extends Equatable {
  final String displayName;
  final String description;
  final String displayIcon;

  Ability.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'] ?? BaseLine.empty,
        description = json['description'] ?? BaseLine.empty,
        displayIcon = json['displayIcon'] ?? BaseLine.empty;

  @override
  List<Object?> get props => [displayName, description, displayIcon];
}
