class Message {
  String typeMessage;
  String message;
  String creatorId;
  String dateEnvoi;
  String heureEnvoi;
  String messageParentId;
  bool isReminder;
  String nextReminderDate;
  String reminderFrequencyId;
  String expiryDate;
  String createdAt;
  String updatedAt;

  Message(
      {this.typeMessage,
      this.message,
      this.creatorId,
      this.dateEnvoi,
      this.heureEnvoi,
      this.messageParentId,
      this.isReminder,
      this.nextReminderDate,
      this.reminderFrequencyId,
      this.expiryDate,
      this.createdAt,
      this.updatedAt});

  Message.fromJson(Map<String, dynamic> json) {
    typeMessage = json['type_message'];
    message = json['message'];
    creatorId = json['creator_id'];
    dateEnvoi = json['date_envoi'];
    heureEnvoi = json['heure_envoi'];
    messageParentId = json['message_parent_id'];
    isReminder = json['is_reminder'];
    nextReminderDate = json['next_reminder_date'];
    reminderFrequencyId = json['reminder_frequency_id'];
    expiryDate = json['expiry_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type_message'] = this.typeMessage;
    data['message'] = this.message;
    data['creator_id'] = this.creatorId;
    data['date_envoi'] = this.dateEnvoi;
    data['heure_envoi'] = this.heureEnvoi;
    data['message_parent_id'] = this.messageParentId;
    data['is_reminder'] = this.isReminder;
    data['next_reminder_date'] = this.nextReminderDate;
    data['reminder_frequency_id'] = this.reminderFrequencyId;
    data['expiry_date'] = this.expiryDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}