import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nopy_valorant_flutter_app/core/network/api_constant.dart';
import 'package:nopy_valorant_flutter_app/landing/model/agent.dart';

class AgentService {
  static Future getAgents() async {
    var response = await http.get(Uri.http(baseUrl, getAgentsUrl));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body) as Map<String, dynamic>;
      return Agent.fromJson(body);
    }
  }
}
