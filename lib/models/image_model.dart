class ImageModel {
  final String downloadUrl;
  final String author;

  ImageModel({required this.downloadUrl, required this.author});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      downloadUrl: json['download_url'],
      author: json['author'],
    );
  }
}
