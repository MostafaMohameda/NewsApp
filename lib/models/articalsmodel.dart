class ArticleModel{
  final String? image;
  final String title;
  final String? subtitle;
  final String? url;

  ArticleModel({required this.image,required this.title,required this.subtitle,required this.url});
  factory ArticleModel.FromJson(json){
    return ArticleModel(image: json['urlToImage'], title: json['title'],
        subtitle: json['description'],
        url: json['url']);
  }

}