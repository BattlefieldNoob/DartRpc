// Copyright (c) 2017, antonio. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:rpc/rpc.dart';


@ApiClass(version: 'v1')
class Test{
  @ApiMethod(path: "hello")
  VoidMessage hello(){
    print("Hello World!");
    return null;
  }
}