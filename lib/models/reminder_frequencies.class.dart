class ReminderFrequencies {
  int id;
  String title;
  int frequence;
  bool isActive;
  String createdAt;
  String updatedAt;

  ReminderFrequencies(
      {this.id,
      this.title,
      this.frequence,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  ReminderFrequencies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    frequence = json['frequence'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['frequence'] = this.frequence;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}