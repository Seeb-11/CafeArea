import 'package:http/http.dart' as http;
import 'dart:convert';

class CafeHttpHelper{
  static const String baseUrl = "https://jsonplaceholder.typicode.com/posts/1";


    // Helper meothod to make a GET request

    static Future<Map<String,dynamic>> get(String endPoint)  async{
      final response = await http.get(Uri.parse("$baseUrl/$endPoint"));
      return handleResponse(response);
    }


    // Helper method to make a POST request
    
    static Future<Map<String,dynamic>> post(String endPoint ,dynamic data)  async{
      final response = await http.post(
        Uri.parse("$baseUrl/$endPoint"),
        headers: { "Content-Type" :  "application/json" },
        body: json.encode(data)
      
      );
      return handleResponse(response);
    }
 // Helper method to make a POST request
 static Future<Map<String,dynamic>> delete(String endPoint ,dynamic data)  async{
      final response = await http.delete(
        Uri.parse("$baseUrl/$endPoint"),
      
      );
      return handleResponse(response);
    }



      

    static Map<String ,dynamic> handleResponse(http.Response response){
      if(response.statusCode == 200){
           return json.decode(response.body);
      }else{
          throw Exception("Failed to Load Data:  ${response.statusCode}");
      }
    }

}