// Copyright (c) 2017, antonio. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:rpc/rpc.dart';


class HelloWorldResponse{
  String hello;
  String world;
}

class HelloWorldRequest{
  String greetings;
}

@ApiClass(version: 'v1')
class Test{
  @ApiMethod(path: "hello")
  VoidMessage hello(){
    print("Hello World!");
    return null;
  }


  @ApiMethod(path: "helloClass")
  HelloWorldResponse helloClass(){
    print("Hello Class!");
    return new HelloWorldResponse()
      ..hello="cavallo"
      ..world="pazzo";
  }


  @ApiMethod(path: "helloClassWithData", method: 'POST')
  HelloWorldResponse helloClassWithData(HelloWorldRequest request){
    print("Hello Class With Data!");
    return new HelloWorldResponse()
      ..hello=request.greetings
      ..world="pazzo";
  }

}