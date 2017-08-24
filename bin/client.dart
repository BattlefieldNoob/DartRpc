
import '../json/test.dart';

import 'package:http/http.dart';


main(List<String> arguments) async {

  var client = new TestApi(new Client());

  client.hello();

  var res=await client.helloClass();

  print("hello:${res.hello}, world:${res.world}");


  res=await client.helloClassWithData(new HelloWorldRequest()..greetings="uqido");

  print("hello:${res.hello}, world:${res.world}");

}