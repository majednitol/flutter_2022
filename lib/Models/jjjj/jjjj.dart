class Jjjj {
  int? userId;
  int? id;
  String? title;
  String? body;

  Jjjj({this.userId, this.id, this.title, this.body});

  @override
  String toString() {
    return 'Jjjj(userId: $userId, id: $id, title: $title, body: $body)';
  }

  factory Jjjj.fromJson(Map<String, dynamic> json) => Jjjj(
        userId: json['userId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        body: json['body'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  Jjjj copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return Jjjj(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
