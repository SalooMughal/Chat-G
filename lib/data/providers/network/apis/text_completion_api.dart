import 'package:chat_gpt/data/providers/network/api_endpoint.dart';
import 'package:chat_gpt/domain/entities/text_completion_body.dart';
import '../api_provider.dart';
import '../api_request_representable.dart';

enum CompletionType { textCompletion }

class TextCompletionAPI implements APIRequestRepresentable {
  final CompletionType type;

  // String? keyword;
  // int? page;
  // int? pageSize;

  TextCompletionAPI._({
    required this.type,
    // this.keyword, this.page, this.pageSize
  });

  TextCompletionAPI.textCompletion(TextCompletionBody sentBody)
      : this._(
          type: CompletionType.textCompletion,
          // page: page, pageSize: pageSize
        );

  // TextCompletionAPI.fetchNews(String keyword, int page, int pageSize)
  //     : this._(
  //     type: CompletionType.textCompletion,
  //     // keyword: keyword,
  //     // page: page,
  //     // pageSize: pageSize,
  // );

  @override
  String get endpoint => APIEndpoint.baseUrl;

  @override
  String get path {
    switch (type) {
      case CompletionType.textCompletion:
        return "/completions";
      // case CompletionType.fetchNews:
      //   return "/top-headlines";
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.post;
  }

  @override
  Map<String, String> get headers => {
        // "X-Api-Key": "d809d6a547734a67af23365ce5bc8c02",
      };

  @override
  Map<String, String> get query {
    switch (type) {
      case CompletionType.textCompletion:
        return {
          // "country": "us", "page": "$page", "pageSize": "$pageSize"
        };
      // case CompletionType.fetchNews:
      //   return {"page": "$page", "pageSize": "$pageSize", "q": keyword ?? ""};
    }
  }

  @override
  get body => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
