import 'dart:convert';

import 'package:abc_cash_n_carry/models/single_product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SingleProductApiManager {
  //const String baseUrl ='http://apps.ab-sol.net/';
  //
  // const String apiRoute ='s4mQaApi/api';
  //
  // const String token ='cb77cce6-c2cb-471b-bdd4-5dac8c93b759';
  //
  // const String authKeyParameter ='auth_token=';
  // // login --> urls
  // const String completeLoginUrl = baseUrl+apiRoute+loginRoute+authKeyParameter+token;

  var productUrl = Uri.parse('https://fakestoreapi.com/products');
  var singleProductModelForJSON;

  // Map<String, dynamic> singleProductModelForJSON = new Map();

  Future<SingleProductModelForJson> getSingleProduct() async {
    var client = http.Client();
    try {
      var response = await client.get(productUrl);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("1");
        var jsonString = response.body;
        print("2");

        // var jsonMap = convert.jsonDecode(jsonString);//as Map<String, dynamic>
        // Map<String, dynamic> jsonMap = new Map<String, dynamic>.from(json.decode(response.body));
        // Map<String, dynamic> jsonMap = jsonDecode(jsonString);
        // var jsonMap = convert.jsonDecode(response.body) as Map<String, dynamic>;

        var jsonMap = json.decode(jsonString);
        print("3");
        print(jsonMap.toString());
        print(jsonMap.runtimeType);
        // singleProductModelForJSON = SingleProductModelForJson.fromJson(jsonMap);
        singleProductModelForJSON = SingleProductModelForJson.fromJson(jsonMap[
            2]); //jsonDecode(response.body) //json.decode(response.body)
        print("4");
        // print(singleProductModelForJSON.toString(),);
      }
    } catch (Exception) {
      print("5");
      print(Exception.toString());
      print(singleProductModelForJSON);
      // print(singleProductModelForJSON.toString(),);
      return singleProductModelForJSON;
    }
    // finally {
    //   client.close();
    // }
    print("6");
    // print(singleProductModelForJSON.toString(),);
    return singleProductModelForJSON;
  }
//

}
