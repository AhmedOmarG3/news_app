class Articalmodel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;
  Articalmodel(
      {required this.image, required this.title, required this.subtitle,required this.url});


factory Articalmodel.fromjson(json){
  return Articalmodel(
            image: json['urlToImage'] ??
                'https://img.freepik.com/premium-vector/illustration-vector-graphic-cartoon-character-404-network-disruption_516790-2349.jpg?w=740',
            title: json['title'],
            subtitle: json['description'],
            url: json['url']);
}


}
