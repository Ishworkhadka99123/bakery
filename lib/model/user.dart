import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'user.g.dart';

@JsonSerializable()
@Entity()
class User {
  @Id(assignable: true)
  int uId;

  @Unique()
  @Index()
  @JsonKey(name: '_id')
  String? userId;

  String? fname;
  String? lname;
  String? gender;
  String? email;
  String? password;

  User(
      {this.uId = 0,
      this.fname,
      this.lname,
      this.userId,
      this.gender,
      this.email,
      this.password});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
