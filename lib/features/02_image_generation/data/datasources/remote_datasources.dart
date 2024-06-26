import '../../../../core/network/app_api.dart';
import '../model/responses/responses.dart';

abstract class ImageRemoteDataSource {
  Future<ImageDataResponse> getGenerateImages(String query);
}

class ImageRemoteDataSourceImpl implements ImageRemoteDataSource {
  final AppServiceClient _appServiceClient;

  ImageRemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<ImageDataResponse> getGenerateImages(String query) async {
    return await _appServiceClient.getGenerateImages("dall-e-3",query, 1, "1024x1024",);
  }
}


 // ['256x256', '512x512', '1024x1024']