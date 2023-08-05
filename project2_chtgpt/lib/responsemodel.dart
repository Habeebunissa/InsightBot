class ResponseModel {
  final String text;

  ResponseModel(this.text);

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    final choices = json['choices'] as List<dynamic>?;
    final text = choices != null && choices.isNotEmpty
        ? choices[0]['text'] as String? ?? 'No response received'
        : 'No response received';

    return ResponseModel(text);
  }
}
