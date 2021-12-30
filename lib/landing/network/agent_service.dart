import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

class AgentService {
  Future<Agent> getAgents() async {
    try {
      var response = await http.get(Uri.https(
        ApiConstant.baseUrl,
        ApiConstant.agentsUrl,
      ));
      var body = jsonDecode(response.body) as Map<String, dynamic>;
      return Agent.fromJson(body);
    } catch (e) {
      return Agent(
        status: 400,
        data: null,
        error: e.toString(),
      );
    }
  }
}
