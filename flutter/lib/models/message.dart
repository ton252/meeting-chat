class Message {
  final DateTime date;
  final String body;
  final String sender;

  const Message({
    required this.date,
    required this.body,
    required this.sender,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      date: DateTime.parse(json['date']),
      body: json['body'],
      sender: json['sender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'body': body,
      'sender': sender,
    };
  }
}
