class TextCompletionBody {
  TextCompletionBody({
    required this.model,
    required this.prompt,
    required this.maxToken,
    required this.temperature,
  });

  String model;
  String prompt;
  String maxToken;
  String temperature;
}
