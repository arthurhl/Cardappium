import 'package:Cardappium/utils/colors.dart';
import 'package:Cardappium/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: _folded ? Dimensions.width10 * 5 : Dimensions.width30 * 8,
      height: Dimensions.height45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius30),
        color: AppColors.mainColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.only(left: Dimensions.width10),
                child: !_folded
                    ? const TextField(
                        decoration: InputDecoration(
                            hintText: 'Pesquisar',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none),
                      )
                    : null),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_folded ? 32 : 0),
                  topRight: const Radius.circular(30),
                  bottomLeft: Radius.circular(_folded ? 32 : 0),
                  bottomRight: const Radius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: Dimensions.width10),
                  child: Icon(
                    _folded ? Icons.search : Icons.close,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _folded = !_folded;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
