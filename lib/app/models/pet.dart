class Pet {
  int? id;
  Map<String, dynamic>? category;
  String? name;
  List<String>? photoUrls;
  List<dynamic>? tags;
  String? status;

  Pet(
      {this.id,
      this.category,
      this.name,
      this.photoUrls,
      this.tags,
      this.status});

  Pet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    name = json['name'];
    photoUrls = json['photoUrls'].cast<String>();
    tags = json['tags'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    if (category != null) {
      data['category'] = category!;
    }
    data['name'] = name;
    data['photoUrls'] = photoUrls;
    if (tags != null) {
      data['tags'] = tags;
    }
    data['status'] = status;
    return data;
  }
}
