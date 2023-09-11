class User{
  
  late final int id;
  late final String name;
  late final String userName;


  User({
    required this.id, 
    required this.name, 
    required this.userName,
  });

  User.fromMap(Map<String, dynamic> result)
  :
  id = result["id"],
  name = result["name"],
  userName = result["userName"];

  Map<String, Object> toMap(){
    return {
      'id' : id,
      'name' : name,
      'userName' : userName,
    };
  }


}