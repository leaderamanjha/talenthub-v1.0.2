class ProductDataModel {
  int? id;
  String? name;
  String? image;
  String? oldPrice;
  String? price;
  String? quantity;

  ProductDataModel({
      this.id, 
      this.name, 
      this.image, 
      this.oldPrice, 
      this.price, 
      this.quantity});

  ProductDataModel.fromJson(Map<String,dynamic> json){
    id = json['id'];
    name = json['name'];
    image = json['image'];
    oldPrice = json['oldPrice'];
    price = json['price'];
    quantity = json['quantity'];
  }
}