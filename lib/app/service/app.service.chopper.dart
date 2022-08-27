// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AppService extends AppService {
  _$AppService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AppService;

  @override
  Future<Response<AppModel>> getAppModel() {
    final $url = 'https://dummyjson.com/products';
    final $headers = {
      'content-type': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<AppModel, AppModel>($request);
  }
}
