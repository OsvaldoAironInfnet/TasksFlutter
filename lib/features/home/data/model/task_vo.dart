class TaskVO {
  String crit;
  String date;
  String description;
  String title;
  String latitude;
  String longitude;
  String? id;
  bool favorite;

  TaskVO(this.title, this.description, this.crit, this.date, this.favorite,
      this.id, this.latitude, this.longitude);

  Map toJson() => {
        "crit": crit,
        "date": date,
        "description": description,
        "title": title,
        "id": id,
        "favorite": favorite,
        "latitude": latitude,
        "longitude": longitude
      };

  TaskVO.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        crit = json['crit'],
        description = json['description'],
        title = json['title'],
        favorite = json['favorite'],
        date = json['date'],
        latitude = json['latitude'],
        longitude = json['longitude'];
}
