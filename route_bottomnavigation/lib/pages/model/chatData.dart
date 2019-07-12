class ChatData {
  final String name;
  final String img;
  final String candy;

  ChatData(this.name, this.candy, this.img);

  ChatData.fromJson(Map <String, dynamic> json)
    :name = json['name'],
    candy = json['candy'],
    img = json['img'];

  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'candy': candy,
    'img': img
  };
}