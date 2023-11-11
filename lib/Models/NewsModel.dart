class NewsModel {
  String? id;
  int? publishedEpoch;
  String? caption;
  String? published;
  String? title;
  String? image;
  String? description;
  String? url;
  String? thumbnail2;
  String? thumbnail1;
  String? slug;

  NewsModel(
      {this.id,
      this.publishedEpoch,
      this.caption,
      this.published,
      this.title,
      this.image,
      this.description,
      this.url,
      this.thumbnail2,
      this.thumbnail1,
      this.slug});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    publishedEpoch = json['published_epoch'];
    caption = json['caption'];
    published = json['published'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    url = json['url'];
    thumbnail2 = json['thumbnail_2'];
    thumbnail1 = json['thumbnail_1'];
    slug = json['slug'];
  }
}
