import 'package:demo_tex_native/web_http_client.dart';
import 'package:demo_tex_native/response_parser.dart';

import 'models/source_preview_result.dart';

String removeTrailingSlash(String url) {
  return url.replaceFirst(RegExp(r'\/+$'), '');
}

class OCRService {
  final WebHttpClient _client;
  final String baseUrl;

  OCRService(this._client, this.baseUrl);

  Future<SourcePreviewResult> fetchSourcePreviewV2({
    required int sourceId,
    bool aladanh = false,
  }) async {
    final aladanhToken =
        'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Im1vb250ZXN0IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im1vb250ZXN0IiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoidGVhY2hlciIsInVzZXJuYW1lIjoibW9vbnRlc3QxIiwiYXZhdGFyIjoiYXZhdGFyL25vcGhvdG8zXzQ4eDQ4LmdpZiIsImZ1bGxuYW1lIjoiVGVzdCBNb29uIiwiZXhwaXJlcyI6IjE4MjA2NTg2MzAiLCJzZXNzaW9ubG9naW50b2tlbiI6IlhUN0c1U1pGS1hNS1ZLRkxHTk4yMlVUWjYzQTRBSDcyIiwid29ya3NwYWNlIjoiYWxhZGFuaCIsIm5iZiI6MTc4OTEyMjYzMCwiZXhwIjoxODIwNjU4NjMwLCJpc3MiOiJodHRwczovL21vb24udm4iLCJhdWQiOiJodHRwczovL21vb24udm4ifQ.ZZo4Hy1c5Z8J3Y3soTSS341iOJL2kaITH1VqJPmeEBYU9rjcg5_ZfVyPZ_5EOQbBgn9-nVOMA2qPIyH930WUPIAYFp1zI8c8a0x0pjHx525gV9zctOsjwcSHrxvGxQT1gWosBLz6ra9yrAz1Vx7otelVf87N8JjmNucc1CcwglZ7F_wAiXPXbsyYMbnNceS-nVeM1fE-SrXqDgdrEyBde0L19cqU7GEpB66qNKtnIzpTNTr2nocls6fj6mRyKGy97yZfdsxy8a80Cl6b68OfhXdsNQnSzuimnmEg-kwuctMYbM_bflwAPw0L06YQmA3JHFt3u2YFFyIU18jdF7gKJg';
    final response = await _client.post(
      uri: Uri.parse(
        '${removeTrailingSlash(baseUrl)}/api/v1/autopost/previews/sources/$sourceId',
      ),
      body: {
        'token': aladanh
            ? aladanhToken
            : 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Im1vb250ZXN0IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im1vb250ZXN0IiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoidGVhY2hlciIsInVzZXJuYW1lIjoibW9vbnRlc3QxIiwiYXZhdGFyIjoiYXZhdGFyL25vcGhvdG8zXzQ4eDQ4LmdpZiIsImZ1bGxuYW1lIjoiVGVzdCBNb29uIiwiZXhwaXJlcyI6IjE4MTk5NjIzMTQiLCJzZXNzaW9ubG9naW50b2tlbiI6IlhUN0c1U1pGS1hNS1ZLRkxHTk4yMlVUWjYzQTRBSDcyIiwid29ya3NwYWNlIjoibW9vbnRlc3QiLCJuYmYiOjE3ODg0MjYzMTQsImV4cCI6MTgxOTk2MjMxNCwiaXNzIjoiaHR0cHM6Ly9tb29uLnZuIiwiYXVkIjoiaHR0cHM6Ly9tb29uLnZuIn0.WBt6YgNDDHu50eKd_zB-6Z3bxdZViRcg2aXOv4Y_EWwy31Mdhj5ka_slSO-LO-qhDA5MP1G8gObST76VhadV_WIDR6vipQ8rz-ufQTL1YUayWCy7GjgighayFakus5lfbk7I59pOgaDY12KEHAqoj6Pwy1H9z51JDk5QpKars6TPabr6UsGHuBxQEFV99Jz8wBw3rojr8xb8KIqtQBrcFlUQDIx1OE2Fwe-6GYubpXZu6ZmnYx81sAkPTjkQZV64yVO5ObgKZazIL68MPUbf89R99sVGoXP7G2Ajhc7DkXZDPGBCYyF4_GLF8A_o35prNLL0ukqv-rQr97jKnWT90w',
      },
    );
    return parseResponse<SourcePreviewResult>(
      response,
      (json) => SourcePreviewResult.fromJson(json),
    );
  }
}
