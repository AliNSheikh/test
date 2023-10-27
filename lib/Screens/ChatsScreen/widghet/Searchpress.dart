import 'package:flutter/material.dart';
import 'package:example/Core/constants.dart';
class SearchPress extends StatelessWidget {
  const SearchPress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40 ,
      height: 40,
      decoration: BoxDecoration(
        color: forange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(Icons.search,color: Colors.white,),
    );
  }
}
