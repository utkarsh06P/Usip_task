import 'package:flutter/material.dart';

class PastExperience
{
  String Organisation;
  String Position;
  String TypeName;
  String Tenure;
  PastExperience(this.TypeName , this.Organisation , this.Position , this.Tenure)
  {
    this.Position = Position;
    this.Tenure = Tenure;
    this.Organisation = Organisation;
    this.TypeName = TypeName;
  }

}