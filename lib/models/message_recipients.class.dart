class MessageRecipients {
  int id;
  int recipientId;
  int messageId;
  int recipientGroupId;
  String etatMessage;
  String dateLu;
  bool isRead;
  String dateReception;
  String createdAt;
  String updatedAt;

  MessageRecipients(
      {this.id,
      this.recipientId,
      this.messageId,
      this.recipientGroupId,
      this.etatMessage,
      this.dateLu,
      this.isRead,
      this.dateReception,
      this.createdAt,
      this.updatedAt});

  MessageRecipients.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    recipientId = json['recipient_id'];
    messageId = json['message_id'];
    recipientGroupId = json['recipient_group_id'];
    etatMessage = json['etat_message'];
    dateLu = json['date_lu'];
    isRead = json['is_read'];
    dateReception = json['date_reception'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['recipient_id'] = this.recipientId;
    data['message_id'] = this.messageId;
    data['recipient_group_id'] = this.recipientGroupId;
    data['etat_message'] = this.etatMessage;
    data['date_lu'] = this.dateLu;
    data['is_read'] = this.isRead;
    data['date_reception'] = this.dateReception;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}