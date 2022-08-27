import 'package:chopper/chopper.dart';
import 'package:chopper_demo/app/model/app.model.dart';
import 'package:chopper_demo/core/util/chopper_json_converter.dart';

part 'app.service.chopper.dart';

@ChopperApi(baseUrl: 'https://dummyjson.com')
abstract class AppService extends ChopperService {
  @FactoryConverter(
    request: JsonConverter.requestFactory,
  )
  static AppService create([ChopperClient? client]) => _$AppService(client);

  @Get(path: '/products', headers: {'content-type': 'application/json'})
  Future<Response<AppModel>> getAppModel();
}

class ChopperConstants {
  static ChopperClient chopper = ChopperClient(
    baseUrl: 'https://dummyjson.com',
    converter: const JsonSerializableConverter({AppModel: AppModel.fromJson}),
    errorConverter: const JsonConverter(),
    services: [AppService.create()],
  );
}
