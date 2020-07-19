class Coffee {
  String title;
  String image;
  int size;
  int sugar;

  Coffee({this.title, this.image, this.size, this.sugar});

  Coffee.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    size = json['size'];
    sugar = json['sugar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['size'] = this.size;
    data['sugar'] = this.sugar;
    return data;
  }
}