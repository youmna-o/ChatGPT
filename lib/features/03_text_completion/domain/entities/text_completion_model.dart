class ChoicesTextCompletionModel {
  Map message;
  num index;
  String finishReason;

  ChoicesTextCompletionModel(
    this.message,
    this.index,
    this.finishReason,
  );
}

class TextCompletionModel {
  num created;
  List<ChoicesTextCompletionModel> choices;

  TextCompletionModel(
    this.created,
    this.choices,
  );
}
