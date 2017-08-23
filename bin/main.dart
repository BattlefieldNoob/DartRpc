// Copyright (c) 2017, antonio. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:untitled/untitled.dart' as untitled;
import 'package:rpc/rpc.dart';
import 'dart:io';


final ApiServer apiServer=new ApiServer();

main(List<String> arguments) async {

  apiServer.addApi(new untitled.Test());
  apiServer.enableDiscoveryApi();
  HttpServer server = await HttpServer.bind(InternetAddress.ANY_IP_V4, 8080);
  server.listen(apiServer.httpRequestHandler);
}
