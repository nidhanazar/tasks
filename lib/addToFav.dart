
import 'package:tasks/list.dart';

List<Map<String,dynamic>> favList=[];

Set<Map<String,dynamic>> cartList = {};

void addToFav({required Map<String,dynamic> values}){

  favList.add(values);
  print(favList);


}

void deleteFromFav({required Map<String,dynamic> values}){
  // favList.remove(values);
  for(int i=0; i<products.length; i++){
    if(products[i]['title']==values['title']){
      products[i]['isFav'] = false;
      break;
    }
    favList.remove(values);
  }
  print(favList);
}

void addToCart({required Map<String,dynamic> values}){
  print('dddd');
  print(cartList);

    cartList.add(values);


}

void deleteFromCart({required Map<String,dynamic> values}){


    cartList.remove(values);


}

// bool checkFav({required Map value}){
//   return  favList.contains(value);
//
// }
