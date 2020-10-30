import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_user_agent/flutter_user_agent.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

class RequestService {
  HttpClient _client;
  IOClient _http;
  String _ua;
  Map<String, dynamic> _headers;

  RequestService();

  _init() async {
    _client = HttpClient()
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
    _http = IOClient(_client);
    _ua = FlutterUserAgent.userAgent;
    _headers['User-Agent'] = _ua;
    _headers['Content-Type'] = 'application/json';
  }

  Future<dynamic> post(
      {@required String url,
      @required Map<String, dynamic> body,
      tokenRequired = true}) async {
    await _init();
    Response response;
    final jsonBody = jsonEncode(body);

    try {
      response = await _http
          .post(url, body: jsonBody, headers: _headers)
          .timeout(Duration(minutes: 1));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception(jsonDecode(e));
    }
  }

  Future<dynamic> get(
      {@required String url,
      Map<String, dynamic> params,
      bool tokenRequired = true}) async {
    await _init();
    if (params.isEmpty) {
      url = url + '?';
      params.entries.map((param) => {url = url + params[param] + '&'});
    }
    Response response;

    try {
      response =
          await _http.get(url, headers: _headers).timeout(Duration(minutes: 1));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception(jsonDecode(e));
    }
  }

  Future<dynamic> put({
    @required String url,
    @required Map<String, dynamic> body,
    bool tokenRequired = true,
  }) async {
    await _init();
    Response response;
    final jsonBody = jsonEncode(body);

    try {
      response = await _http
          .put(url, body: jsonBody, headers: _headers)
          .timeout(Duration(minutes: 1));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception(jsonDecode(e));
    }
  }

  Future<dynamic> delete({
    @required String url,
    bool tokenRequired = true,
  }) async {
    await _init();
    Response response;

    try {
      response = await _http
          .delete(url, headers: _headers)
          .timeout(Duration(minutes: 1));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception(jsonDecode(e));
    }
  }
}
