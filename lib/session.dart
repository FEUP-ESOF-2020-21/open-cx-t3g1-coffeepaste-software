class Session {
  int _id;
  String _type;
  String _description;

  Session(int id){
    this._id = id;
  }

  void setType(String newType){
    this._type = newType;
  }

  int getId(){
    return this._id;
  }

  String getType(){
    return this._type;
  }

  void setDescription(String newDescription){
    this._description = newDescription;
  }

  String getDescription(){
    return this._description;
  }
}