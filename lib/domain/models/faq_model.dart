import 'dart:convert';

class FAQResponse {
  final List<FAQ> faqs;

  FAQResponse({required this.faqs});

  factory FAQResponse.fromJson(Map<String, dynamic> json) {
    return FAQResponse(
      faqs: (json['FAQs'] as List).map((item) => FAQ.fromJson(item)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "FAQs": faqs.map((faq) => faq.toJson()).toList(),
    };
  }
}

class FAQ {
  final String id;
  final String question;
  final String answer;

  FAQ({required this.id, required this.question, required this.answer});

  factory FAQ.fromJson(Map<String, dynamic> json) {
    return FAQ(
      id: json["_id"],
      question: json["question"],
      answer: json["answer"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "question": question,
      "answer": answer,
    };
  }
}
