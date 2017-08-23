
import '../json/test.dart';

import 'package:http/http.dart';


main(List<String> arguments) async {

  var client = new TestApi(new Client());

  client.hello();
}