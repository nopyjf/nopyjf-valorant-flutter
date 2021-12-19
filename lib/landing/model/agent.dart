class Agent {
  final int status;
  final AgentData data;

  Agent.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        data = json['data'];
}

class AgentData {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final Role role;
  final List<Ability> abilities;

  AgentData.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'],
        displayName = json['displayName'],
        description = json['description'],
        displayIcon = json['displayIcon'],
        role = Role.fromJson(json['role']),
        abilities = (json['abilities'] as List)
            .map((ability) => Ability.fromJson(json))
            .toList();
}

class Role {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;

  Role.fromJson(Map<String, dynamic> json)
      : uuid = json['uuid'],
        displayName = json['displayName'],
        description = json['description'],
        displayIcon = json['displayIcon'];
}

class Ability {
  final String displayName;
  final String description;
  final String displayIcon;

  Ability.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        description = json['description'],
        displayIcon = json['displayIcon'];
}
