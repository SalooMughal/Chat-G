import 'package:chat_gpt/data/models/text_completion_model.dart';
import 'package:chat_gpt/domain/entities/text_completion_body.dart';

abstract class TextCompletionRepository {
  Future<TextCompletion> postTextCompletion(TextCompletionBody sentBody);

}