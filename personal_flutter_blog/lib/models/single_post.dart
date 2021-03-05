class SinglePost {
  final String featuredImage, title, date, url, content, avatarURL, authorName, timeStamp, tags;

  SinglePost({
    this.authorName,
    this.content,
    this.avatarURL,
    this.featuredImage,
    this.title,
    this.date,
    this.url,
    this.timeStamp,
    this.tags,
  });

  factory SinglePost.fromJson(Map json) {
    return SinglePost(
      authorName: json['author']['name'],
      avatarURL: json['author']['avatar_url'],
      content: json['content'],
      date: json['date'],
      featuredImage: json['featured_image'],
      title: json['title'],
      url: json['URL'],
      timeStamp: json['timeStamp'],
      tags: json['tags'],
    );
  }
}
