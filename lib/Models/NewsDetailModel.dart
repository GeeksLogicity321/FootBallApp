class NewsDetailModel {
  String? published;
  String? title;
  Image? image;
  String? id;
  List<Article>? article;
  String? author;
  List<Image>? images;
  String? subtitle;

  NewsDetailModel(
      {this.published,
      this.title,
      this.image,
      this.id,
      this.article,
      this.author,
      this.images,
      this.subtitle});

  NewsDetailModel.fromJson(Map<String, dynamic> json) {
    published = json['published'];
    title = json['title'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    id = json['id'];
    if (json['article'] != null) {
      article = <Article>[];
      json['article'].forEach((v) {
        article!.add(Article.fromJson(v));
      });
    }
    author = json['author'];
    if (json['images'] != null) {
      images = <Image>[];
      json['images'].forEach((v) {
        images!.add(Image.fromJson(v));
      });
    }
    subtitle = json['subtitle'];
  }
}

class Image {
  String? url;
  String? height;
  String? alt;
  String? width;

  Image({this.url, this.height, this.alt, this.width});

  Image.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    height = json['height'];
    alt = json['alt'];
    width = json['width'];
  }
}

class Article {
  String? p;

  Article({this.p});

  Article.fromJson(Map<String, dynamic> json) {
    p = json['p'];
  }
}
