
import 'package:chat_gpt/data/models/text_completion_model.dart';
import 'package:chat_gpt/data/providers/network/apis/text_completion_api.dart';
import 'package:chat_gpt/domain/entities/text_completion_body.dart';
import 'package:chat_gpt/domain/repositories/completion_repository.dart';

class TextCompletionRepositoryIml extends TextCompletionRepository {

  @override
  Future<TextCompletion> postTextCompletion(TextCompletionBody sentBody) async {
    final response = await TextCompletionAPI.textCompletion(sentBody).request();
    return textCompletionFromJson(response);
  }

}