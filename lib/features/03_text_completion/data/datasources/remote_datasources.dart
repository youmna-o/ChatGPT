import '../../../../core/network/app_api.dart';
import '../models/responses/responses.dart';

abstract class TextCompletionRemoteDataSource {
  Future<TextCompletionResponse> getTextCompletion(String query);
}

class TextCompletionRemoteDataSourceImpl implements TextCompletionRemoteDataSource {
  final AppServiceClient _appServiceClient;

  TextCompletionRemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<TextCompletionResponse> getTextCompletion(String query) async {
    return await _appServiceClient.getTextCompletion(
      "gpt-3.5-turbo-0125",
       1000,
      query,
    );
  }
}
