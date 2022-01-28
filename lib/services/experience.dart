import 'package:flutter/material.dart';

class Experience {

  String imgUrl;
  String PlatformName;
  String TypeName;
  String LinkName;

  Experience(this.imgUrl , this.LinkName , this.PlatformName , this.TypeName)
  {
    this.PlatformName = PlatformName;
    this.LinkName = LinkName;
    this.TypeName = TypeName;
    this.imgUrl = imgUrl;
  }

}